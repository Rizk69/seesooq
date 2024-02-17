import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:opensooq/core/utils/pickup_service.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/home/data/models/users_story_model.dart';
import 'package:opensooq/future/home/data/repositories/home_user_repo.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_state.dart';
import 'package:story_view/story_view.dart';

class StoryUserCubit extends Cubit<StoryUserState> {
  StoryUserCubit() : super(const StoryUserState()) {
    getMyStories();
    getUsersStories();
  }

  HomeUserRepo homeUserRepo = di.sl<HomeUserRepo>();

  static StoryUserCubit get(context) => BlocProvider.of(context);

  Future<void> deleteMyStory() async {
    List<StoriesData> temp = List.from(state.storyModel?.stories ?? []);
    List<StoryItem> storyTemp = List.from(state.storyItems);
    emit(state.copyWith(storyStatus: StoryStatus.loading));
    final result = await homeUserRepo.deleteMyStory(id: (state.storyModel?.stories?[state.selectedStoryIndex].id?.toInt() ?? 0));
    result.fold(
      (error) {
        temp.clear();
        EasyLoading.showError(error.message.toString());
        emit(state.copyWith(storyStatus: StoryStatus.error));
      },
      (data) {
        temp.removeAt(state.selectedStoryIndex);
        storyTemp.removeAt(state.selectedStoryIndex);

        emit(
          state.copyWith(
            storyStatus: StoryStatus.loaded,
            storyItems: storyTemp,
            storyModel: state.storyModel?.copyWith(stories: temp),
            selectedStoryIndex: state.selectedStoryIndex > 0 ? state.selectedStoryIndex - 1 : 0,
          ),
        );
      },
    );
  }

  Future<void> viewStory({required int id}) async {
    await homeUserRepo.viewStory(storyId: id).then((value) => value.fold((l) {}, (r) {}));
  }

  Future<void> getMyStories() async {
    emit(state.copyWith(storyStatus: StoryStatus.loading));
    final result = await homeUserRepo.getMyStory();
    result.fold(
      (error) {
        EasyLoading.showError(error.message.toString());
        emit(state.copyWith(storyStatus: StoryStatus.error));
      },
      (data) {
        emit(state.copyWith(
            storyStatus: StoryStatus.loaded,
            storyModel: data,
            storyItems: data.stories
                    ?.map((e) => StoryItem.pageImage(
                          url: e.story ?? '',
                          controller: StoryController(),
                          caption: e.description ?? '',
                          shown: true,
                          key: UniqueKey(),
                        ))
                    .toList() ??
                []));
      },
    );
  }

  Future<void> getUsersStories() async {
    final result = await homeUserRepo.getUsersStory();
    result.fold(
      (error) {
        EasyLoading.showError(error.message.toString());
        // emit(state.copyWith(storyStatus: StoryStatus.error));
      },
      (usersStory) {
        emit(state.copyWith(
          usersStories: usersStory,
        ));
      },
    );
  }

  void updateShowStoryUser(int index) {
    emit(state.copyWith(
      storyUsers: state.usersStories?.info?[index].stories
              ?.map((e) => StoryItem.pageImage(
                    url: e.story ?? '',
                    controller: StoryController(),
                    caption: e.description ?? '',
                    shown: true,
                  ))
              .toList() ??
          [],
    ));
  }

  Future<void> createMyStory({
    required String image,
    required String caption,
  }) async {
    emit(state.copyWith(storyStatus: StoryStatus.loading));
    EasyLoading.show(status: 'Uploading Story');
    final result = await homeUserRepo.createMyStory(image: image, caption: caption);
    result.fold(
      (error) {
        EasyLoading.showError(error.message.toString());
        emit(state.copyWith(createStoryStatus: CreateStoryStatus.loading));
      },
      (data) {
        emit(state.copyWith(createStoryStatus: CreateStoryStatus.loaded));
        getMyStories();
      },
    );
    EasyLoading.dismiss();
  }

  void selectStory(int index) {
    emit(state.copyWith(selectedStoryIndex: index));
  }

  void updateStatusOpening({int? index, required StatusOpening statusOpening}) {
    if (statusOpening == StatusOpening.others) {
      updateShowStoryUser(index ?? 0);
    }

    emit(state.copyWith(statusOpening: statusOpening));
  }

  Future<void> pickImage() async {
    emit(state.copyWith(createStoryStatus: CreateStoryStatus.loading));
    await PickFilesService.getImageFromPhone(
      onPicked: (image) {
        if (image == null) {
          emit(state.copyWith(createStoryStatus: CreateStoryStatus.error));
        } else {
          emit(state.copyWith(
            createStoryStatus: CreateStoryStatus.picked,
            imageFile: image,
          ));
        }
      },
    );
  }
}
