part of 'reels_bloc.dart';

@freezed
class ReelsEvent with _$ReelsEvent {
  const factory ReelsEvent.getReels() = _GetReels;
  const factory ReelsEvent.refreshReels() = _RefreshReels;
  const factory ReelsEvent.loadMoreReels() = _LoadMoreReels;

  const factory ReelsEvent.viewReel(String id, int indexPage) = _ViewReel;

  // createReel
  const factory ReelsEvent.createReel() = _CreateReel;
  // get my reels
  const factory ReelsEvent.getMyReels() = _GetMyReels;

  //delete this line
  const factory ReelsEvent.deleteReel(String id) = _DeleteReel;
  const factory ReelsEvent.addFavReel(String id, int index) = _AddFavReel;
  const factory ReelsEvent.unlikeReel(String id) = _UnlikeReel;
  const factory ReelsEvent.replyReel(String id, String comment) = _ReplyReel;
  const factory ReelsEvent.shareReel(String id) = _ShareReel;
}
