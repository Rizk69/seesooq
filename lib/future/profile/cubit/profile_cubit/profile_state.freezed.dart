// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  ProfileStatus get profileStatus => throw _privateConstructorUsedError;
  GeneralStatisticModel? get statisticModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {ProfileStatus profileStatus, GeneralStatisticModel? statisticModel});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileStatus = null,
    Object? statisticModel = freezed,
  }) {
    return _then(_value.copyWith(
      profileStatus: null == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      statisticModel: freezed == statisticModel
          ? _value.statisticModel
          : statisticModel // ignore: cast_nullable_to_non_nullable
              as GeneralStatisticModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileStatus profileStatus, GeneralStatisticModel? statisticModel});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileStatus = null,
    Object? statisticModel = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      profileStatus: null == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      statisticModel: freezed == statisticModel
          ? _value.statisticModel
          : statisticModel // ignore: cast_nullable_to_non_nullable
              as GeneralStatisticModel?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.profileStatus = ProfileStatus.initial, this.statisticModel = null});

  @override
  @JsonKey()
  final ProfileStatus profileStatus;
  @override
  @JsonKey()
  final GeneralStatisticModel? statisticModel;

  @override
  String toString() {
    return 'ProfileState(profileStatus: $profileStatus, statisticModel: $statisticModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.profileStatus, profileStatus) ||
                other.profileStatus == profileStatus) &&
            (identical(other.statisticModel, statisticModel) ||
                other.statisticModel == statisticModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileStatus, statisticModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final ProfileStatus profileStatus,
      final GeneralStatisticModel? statisticModel}) = _$ProfileStateImpl;

  @override
  ProfileStatus get profileStatus;
  @override
  GeneralStatisticModel? get statisticModel;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
