import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:opensooq/future/home/data/models/my_story_model.dart';
import 'package:opensooq/future/home/data/models/users_story_model.dart';
import 'package:story_view/story_view.dart';

part 'story_user_state.freezed.dart';

enum StoryStatus { initial, loading, loaded, error }

enum CreateStoryStatus { initial, loading, picked, loaded, error }

enum StatusOpening { me, others }

@freezed
class StoryUserState with _$StoryUserState {
  const factory StoryUserState({
    @Default(StoryStatus.initial) StoryStatus storyStatus,
    @Default(CreateStoryStatus.initial) CreateStoryStatus createStoryStatus,
    @Default(null) XFile? imageFile,
    @Default([]) List<StoryItem?> storyItems,
    @Default([]) List<StoryItem?> storyUsers,
    @Default(null) MyStoryModel? storyModel,
    @Default(StatusOpening.me) StatusOpening statusOpening,
    @Default(null) UsersStoryModel? usersStories,
    @Default(0) int selectedStoryIndex,
    @Default(null) MyStoryModel? myStoryModel,
  }) = _StoryUserState;
}
