import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/reels/data/model/my_reels_model.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';
import 'package:opensooq/future/reels/data/reels_repository/reels_repository.dart';
import 'package:video_compress/video_compress.dart';

part 'reels_bloc.freezed.dart';
part 'reels_event.dart';
part 'reels_state.dart';

class ReelsBloc extends Bloc<ReelsEvent, ReelsState> {
  final _reelsRepository = di.sl<ReelsRepository>();

  static ReelsBloc get(context) => BlocProvider.of(context);
  ReelsBloc() : super(const ReelsState()) {
    on<ReelsEvent>((event, emit) async {
      await event.when(
        getReels: () async {
          await _getReels(emit);
        },
        refreshReels: () {},
        loadMoreReels: () {},
        deleteReel: (id) async {
          await _deleteReel(id, emit);
        },
        addFavReel: (id, index) async {
          await _likeReel(emit, id, index);
        },
        unlikeReel: (id) {},
        replyReel: (id, comment) {},
        shareReel: (id) {},
        viewReel: (id) async {
          await _viewReel(id);
        },
        createReel: () async => _createReel(),
        getMyReels: () async {
          await _getMyReels(emit);
        },
      );
    });
  }
  Future<void> _getReels(Emitter emit) async {
    emit(state.copyWith(status: ReelsStatus.loading));
    final reels = await _reelsRepository.getReels();
    reels.fold(
      (error) => emit(state.copyWith(status: ReelsStatus.error)),
      (reels) => emit(state.copyWith(reels: reels, status: ReelsStatus.loaded)),
    );
  }

  Future<void> _viewReel(String id) async {
    await _reelsRepository.viewReel(id: id);
  }

  Future<void> _createReel() async {
    _getVideoFromPhone().then((value) async {
      MediaInfo? mediaInfo = await VideoCompress.compressVideo(
        value!.files.single.path!,
        quality: VideoQuality.MediumQuality,
        deleteOrigin: false,
      );

      if (mediaInfo?.path != null) {
        _reelsRepository.createReel(video: mediaInfo!.path!, description: 'hellow world');
      }
    });
  }

  Future<void> _getMyReels(Emitter emit) async {
    final response = await _reelsRepository.getMyReels();
    response.fold(
        (error) => print('error'),
        (reels) => emit(
              state.copyWith(myReels: reels),
            ));
  }

  Future<void> _likeReel(Emitter emit, String id, int index) async {
    final response = await _reelsRepository.likeReel(id: id);
    response.fold((error) {
      print('error$error');
    }, (reels) {
      List<UserReels>? temp = List.from(state.reels?.userReels ?? []);
      // temp[index] = temp[index].reels[0].

      emit(state.copyWith(likeReelStatus: LikeReelStatus.liked));
    });
  }

  Future<FilePickerResult?> _getVideoFromPhone() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.video,
      allowMultiple: false,
      lockParentWindow: true,
    );
    return result;
  }

  Future<void> _deleteReel(String id, Emitter emitter) async {
    final response = await _reelsRepository.deleteReel(id: id);

    response.fold((error) => print('error'), (data) {
      final newReels = state.myReels!.myReels!.where((element) => element.id.toString() != id).toList();
      MyReelsModel newMyReels = MyReelsModel(myReels: newReels);
      emitter(state.copyWith(myReels: newMyReels));
    });
  }
}
