import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/follow_section/data/model/followers_model.dart';

part 'follow_state.freezed.dart';

enum FollowersStatus { initial, loading, loaded, error, empty }

enum FollowingStatus { initial, loading, loaded, error, empty }

enum AddFollowStatus { success, error, initial, loading }

@freezed
class FollowState with _$FollowState {
  const factory FollowState({
    @Default(FollowersStatus.initial) FollowersStatus followersStatus,
    @Default(FollowingStatus.initial) FollowingStatus followingStatus,
    @Default(AddFollowStatus.initial) AddFollowStatus addFollowStatus,
    @Default(null) FollowersModel? followersUsers,
    @Default(null) FollowersModel? filterFollowersUsers,
    @Default(null) FollowersModel? followingUsers,
  }) = _FollowState;
}
