// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FollowState {
  FollowersStatus get followersStatus => throw _privateConstructorUsedError;
  FollowingStatus get followingStatus => throw _privateConstructorUsedError;
  AddFollowStatus get addFollowStatus => throw _privateConstructorUsedError;
  FollowersModel? get followersUsers => throw _privateConstructorUsedError;
  FollowersModel? get filterFollowersUsers =>
      throw _privateConstructorUsedError;
  FollowersModel? get followingUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowStateCopyWith<FollowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowStateCopyWith<$Res> {
  factory $FollowStateCopyWith(
          FollowState value, $Res Function(FollowState) then) =
      _$FollowStateCopyWithImpl<$Res, FollowState>;
  @useResult
  $Res call(
      {FollowersStatus followersStatus,
      FollowingStatus followingStatus,
      AddFollowStatus addFollowStatus,
      FollowersModel? followersUsers,
      FollowersModel? filterFollowersUsers,
      FollowersModel? followingUsers});
}

/// @nodoc
class _$FollowStateCopyWithImpl<$Res, $Val extends FollowState>
    implements $FollowStateCopyWith<$Res> {
  _$FollowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followersStatus = null,
    Object? followingStatus = null,
    Object? addFollowStatus = null,
    Object? followersUsers = freezed,
    Object? filterFollowersUsers = freezed,
    Object? followingUsers = freezed,
  }) {
    return _then(_value.copyWith(
      followersStatus: null == followersStatus
          ? _value.followersStatus
          : followersStatus // ignore: cast_nullable_to_non_nullable
              as FollowersStatus,
      followingStatus: null == followingStatus
          ? _value.followingStatus
          : followingStatus // ignore: cast_nullable_to_non_nullable
              as FollowingStatus,
      addFollowStatus: null == addFollowStatus
          ? _value.addFollowStatus
          : addFollowStatus // ignore: cast_nullable_to_non_nullable
              as AddFollowStatus,
      followersUsers: freezed == followersUsers
          ? _value.followersUsers
          : followersUsers // ignore: cast_nullable_to_non_nullable
              as FollowersModel?,
      filterFollowersUsers: freezed == filterFollowersUsers
          ? _value.filterFollowersUsers
          : filterFollowersUsers // ignore: cast_nullable_to_non_nullable
              as FollowersModel?,
      followingUsers: freezed == followingUsers
          ? _value.followingUsers
          : followingUsers // ignore: cast_nullable_to_non_nullable
              as FollowersModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowStateImplCopyWith<$Res>
    implements $FollowStateCopyWith<$Res> {
  factory _$$FollowStateImplCopyWith(
          _$FollowStateImpl value, $Res Function(_$FollowStateImpl) then) =
      __$$FollowStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FollowersStatus followersStatus,
      FollowingStatus followingStatus,
      AddFollowStatus addFollowStatus,
      FollowersModel? followersUsers,
      FollowersModel? filterFollowersUsers,
      FollowersModel? followingUsers});
}

/// @nodoc
class __$$FollowStateImplCopyWithImpl<$Res>
    extends _$FollowStateCopyWithImpl<$Res, _$FollowStateImpl>
    implements _$$FollowStateImplCopyWith<$Res> {
  __$$FollowStateImplCopyWithImpl(
      _$FollowStateImpl _value, $Res Function(_$FollowStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followersStatus = null,
    Object? followingStatus = null,
    Object? addFollowStatus = null,
    Object? followersUsers = freezed,
    Object? filterFollowersUsers = freezed,
    Object? followingUsers = freezed,
  }) {
    return _then(_$FollowStateImpl(
      followersStatus: null == followersStatus
          ? _value.followersStatus
          : followersStatus // ignore: cast_nullable_to_non_nullable
              as FollowersStatus,
      followingStatus: null == followingStatus
          ? _value.followingStatus
          : followingStatus // ignore: cast_nullable_to_non_nullable
              as FollowingStatus,
      addFollowStatus: null == addFollowStatus
          ? _value.addFollowStatus
          : addFollowStatus // ignore: cast_nullable_to_non_nullable
              as AddFollowStatus,
      followersUsers: freezed == followersUsers
          ? _value.followersUsers
          : followersUsers // ignore: cast_nullable_to_non_nullable
              as FollowersModel?,
      filterFollowersUsers: freezed == filterFollowersUsers
          ? _value.filterFollowersUsers
          : filterFollowersUsers // ignore: cast_nullable_to_non_nullable
              as FollowersModel?,
      followingUsers: freezed == followingUsers
          ? _value.followingUsers
          : followingUsers // ignore: cast_nullable_to_non_nullable
              as FollowersModel?,
    ));
  }
}

/// @nodoc

class _$FollowStateImpl implements _FollowState {
  const _$FollowStateImpl(
      {this.followersStatus = FollowersStatus.initial,
      this.followingStatus = FollowingStatus.initial,
      this.addFollowStatus = AddFollowStatus.initial,
      this.followersUsers = null,
      this.filterFollowersUsers = null,
      this.followingUsers = null});

  @override
  @JsonKey()
  final FollowersStatus followersStatus;
  @override
  @JsonKey()
  final FollowingStatus followingStatus;
  @override
  @JsonKey()
  final AddFollowStatus addFollowStatus;
  @override
  @JsonKey()
  final FollowersModel? followersUsers;
  @override
  @JsonKey()
  final FollowersModel? filterFollowersUsers;
  @override
  @JsonKey()
  final FollowersModel? followingUsers;

  @override
  String toString() {
    return 'FollowState(followersStatus: $followersStatus, followingStatus: $followingStatus, addFollowStatus: $addFollowStatus, followersUsers: $followersUsers, filterFollowersUsers: $filterFollowersUsers, followingUsers: $followingUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowStateImpl &&
            (identical(other.followersStatus, followersStatus) ||
                other.followersStatus == followersStatus) &&
            (identical(other.followingStatus, followingStatus) ||
                other.followingStatus == followingStatus) &&
            (identical(other.addFollowStatus, addFollowStatus) ||
                other.addFollowStatus == addFollowStatus) &&
            (identical(other.followersUsers, followersUsers) ||
                other.followersUsers == followersUsers) &&
            (identical(other.filterFollowersUsers, filterFollowersUsers) ||
                other.filterFollowersUsers == filterFollowersUsers) &&
            (identical(other.followingUsers, followingUsers) ||
                other.followingUsers == followingUsers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followersStatus, followingStatus,
      addFollowStatus, followersUsers, filterFollowersUsers, followingUsers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowStateImplCopyWith<_$FollowStateImpl> get copyWith =>
      __$$FollowStateImplCopyWithImpl<_$FollowStateImpl>(this, _$identity);
}

abstract class _FollowState implements FollowState {
  const factory _FollowState(
      {final FollowersStatus followersStatus,
      final FollowingStatus followingStatus,
      final AddFollowStatus addFollowStatus,
      final FollowersModel? followersUsers,
      final FollowersModel? filterFollowersUsers,
      final FollowersModel? followingUsers}) = _$FollowStateImpl;

  @override
  FollowersStatus get followersStatus;
  @override
  FollowingStatus get followingStatus;
  @override
  AddFollowStatus get addFollowStatus;
  @override
  FollowersModel? get followersUsers;
  @override
  FollowersModel? get filterFollowersUsers;
  @override
  FollowersModel? get followingUsers;
  @override
  @JsonKey(ignore: true)
  _$$FollowStateImplCopyWith<_$FollowStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
