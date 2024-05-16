part of 'reels_bloc.dart';

enum ReelsStatus { initial, loading, loaded, error, loadMore }

enum LikeReelStatus { initial, loading, liked, error, unliked }

@freezed
class ReelsState with _$ReelsState {
  const factory ReelsState({
    @Default(null) ReelsModel? reels,
    @Default(null) MyReelsModel? myReels,
    @Default(ReelsStatus.initial) ReelsStatus status,
    @Default(LikeReelStatus.initial) LikeReelStatus likeReelStatus,
  }) = _ReelsState;
}
