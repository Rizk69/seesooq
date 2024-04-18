// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_policy_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrivacyPolicyState {
  PrivacyPolicyStatus get privacyPolicyStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrivacyPolicyStateCopyWith<PrivacyPolicyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyPolicyStateCopyWith<$Res> {
  factory $PrivacyPolicyStateCopyWith(
          PrivacyPolicyState value, $Res Function(PrivacyPolicyState) then) =
      _$PrivacyPolicyStateCopyWithImpl<$Res, PrivacyPolicyState>;
  @useResult
  $Res call({PrivacyPolicyStatus privacyPolicyStatus});
}

/// @nodoc
class _$PrivacyPolicyStateCopyWithImpl<$Res, $Val extends PrivacyPolicyState>
    implements $PrivacyPolicyStateCopyWith<$Res> {
  _$PrivacyPolicyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privacyPolicyStatus = null,
  }) {
    return _then(_value.copyWith(
      privacyPolicyStatus: null == privacyPolicyStatus
          ? _value.privacyPolicyStatus
          : privacyPolicyStatus // ignore: cast_nullable_to_non_nullable
              as PrivacyPolicyStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivacyPolicyStateImplCopyWith<$Res>
    implements $PrivacyPolicyStateCopyWith<$Res> {
  factory _$$PrivacyPolicyStateImplCopyWith(_$PrivacyPolicyStateImpl value,
          $Res Function(_$PrivacyPolicyStateImpl) then) =
      __$$PrivacyPolicyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrivacyPolicyStatus privacyPolicyStatus});
}

/// @nodoc
class __$$PrivacyPolicyStateImplCopyWithImpl<$Res>
    extends _$PrivacyPolicyStateCopyWithImpl<$Res, _$PrivacyPolicyStateImpl>
    implements _$$PrivacyPolicyStateImplCopyWith<$Res> {
  __$$PrivacyPolicyStateImplCopyWithImpl(_$PrivacyPolicyStateImpl _value,
      $Res Function(_$PrivacyPolicyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privacyPolicyStatus = null,
  }) {
    return _then(_$PrivacyPolicyStateImpl(
      privacyPolicyStatus: null == privacyPolicyStatus
          ? _value.privacyPolicyStatus
          : privacyPolicyStatus // ignore: cast_nullable_to_non_nullable
              as PrivacyPolicyStatus,
    ));
  }
}

/// @nodoc

class _$PrivacyPolicyStateImpl implements _PrivacyPolicyState {
  const _$PrivacyPolicyStateImpl(
      {this.privacyPolicyStatus = PrivacyPolicyStatus.initial});

  @override
  @JsonKey()
  final PrivacyPolicyStatus privacyPolicyStatus;

  @override
  String toString() {
    return 'PrivacyPolicyState(privacyPolicyStatus: $privacyPolicyStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyPolicyStateImpl &&
            (identical(other.privacyPolicyStatus, privacyPolicyStatus) ||
                other.privacyPolicyStatus == privacyPolicyStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, privacyPolicyStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyPolicyStateImplCopyWith<_$PrivacyPolicyStateImpl> get copyWith =>
      __$$PrivacyPolicyStateImplCopyWithImpl<_$PrivacyPolicyStateImpl>(
          this, _$identity);
}

abstract class _PrivacyPolicyState implements PrivacyPolicyState {
  const factory _PrivacyPolicyState(
          {final PrivacyPolicyStatus privacyPolicyStatus}) =
      _$PrivacyPolicyStateImpl;

  @override
  PrivacyPolicyStatus get privacyPolicyStatus;
  @override
  @JsonKey(ignore: true)
  _$$PrivacyPolicyStateImplCopyWith<_$PrivacyPolicyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
