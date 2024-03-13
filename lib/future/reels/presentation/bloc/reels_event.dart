part of 'reels_bloc.dart';

@freezed
class ReelsEvent with _$ReelsEvent {
  const factory ReelsEvent.getReels() = _GetReels;
  const factory ReelsEvent.refreshReels() = _RefreshReels;
  const factory ReelsEvent.loadMoreReels() = _LoadMoreReels;
  //delete this line
  const factory ReelsEvent.deleteReel(String id) = _DeleteReel;
  const factory ReelsEvent.likeReel(String id) = _LikeReel;
  const factory ReelsEvent.unlikeReel(String id) = _UnlikeReel;
  const factory ReelsEvent.replyReel(String id, String comment) = _ReplyReel;
  const factory ReelsEvent.shareReel(String id) = _ShareReel;
}
