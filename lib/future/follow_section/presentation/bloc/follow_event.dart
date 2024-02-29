import 'package:freezed_annotation/freezed_annotation.dart';

part 'follow_event.freezed.dart';

@freezed
class FollowEvent with _$FollowEvent {
  const factory FollowEvent.getFollowers() = _FollowEvent;
  const factory FollowEvent.getFollowing() = _GetFollowing;
  const factory FollowEvent.addFollow(int id) = _AddFollow;
  const factory FollowEvent.removeFollowers(int id) = _RemoveFollowers;
  const factory FollowEvent.removeFollowing(int id) = _RemoveFollowing;
}
