// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_of_use_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TermsOfUseState {
  TermsOfUseStatus get termsOfUseStatus => throw _privateConstructorUsedError;
  GeneralSettingModel? get termsOfUse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsOfUseStateCopyWith<TermsOfUseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsOfUseStateCopyWith<$Res> {
  factory $TermsOfUseStateCopyWith(
          TermsOfUseState value, $Res Function(TermsOfUseState) then) =
      _$TermsOfUseStateCopyWithImpl<$Res, TermsOfUseState>;
  @useResult
  $Res call(
      {TermsOfUseStatus termsOfUseStatus, GeneralSettingModel? termsOfUse});
}

/// @nodoc
class _$TermsOfUseStateCopyWithImpl<$Res, $Val extends TermsOfUseState>
    implements $TermsOfUseStateCopyWith<$Res> {
  _$TermsOfUseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsOfUseStatus = null,
    Object? termsOfUse = freezed,
  }) {
    return _then(_value.copyWith(
      termsOfUseStatus: null == termsOfUseStatus
          ? _value.termsOfUseStatus
          : termsOfUseStatus // ignore: cast_nullable_to_non_nullable
              as TermsOfUseStatus,
      termsOfUse: freezed == termsOfUse
          ? _value.termsOfUse
          : termsOfUse // ignore: cast_nullable_to_non_nullable
              as GeneralSettingModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermsOfUseStateImplCopyWith<$Res>
    implements $TermsOfUseStateCopyWith<$Res> {
  factory _$$TermsOfUseStateImplCopyWith(_$TermsOfUseStateImpl value,
          $Res Function(_$TermsOfUseStateImpl) then) =
      __$$TermsOfUseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TermsOfUseStatus termsOfUseStatus, GeneralSettingModel? termsOfUse});
}

/// @nodoc
class __$$TermsOfUseStateImplCopyWithImpl<$Res>
    extends _$TermsOfUseStateCopyWithImpl<$Res, _$TermsOfUseStateImpl>
    implements _$$TermsOfUseStateImplCopyWith<$Res> {
  __$$TermsOfUseStateImplCopyWithImpl(
      _$TermsOfUseStateImpl _value, $Res Function(_$TermsOfUseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termsOfUseStatus = null,
    Object? termsOfUse = freezed,
  }) {
    return _then(_$TermsOfUseStateImpl(
      termsOfUseStatus: null == termsOfUseStatus
          ? _value.termsOfUseStatus
          : termsOfUseStatus // ignore: cast_nullable_to_non_nullable
              as TermsOfUseStatus,
      termsOfUse: freezed == termsOfUse
          ? _value.termsOfUse
          : termsOfUse // ignore: cast_nullable_to_non_nullable
              as GeneralSettingModel?,
    ));
  }
}

/// @nodoc

class _$TermsOfUseStateImpl implements _TermsOfUseState {
  const _$TermsOfUseStateImpl(
      {this.termsOfUseStatus = TermsOfUseStatus.initial,
      this.termsOfUse = null});

  @override
  @JsonKey()
  final TermsOfUseStatus termsOfUseStatus;
  @override
  @JsonKey()
  final GeneralSettingModel? termsOfUse;

  @override
  String toString() {
    return 'TermsOfUseState(termsOfUseStatus: $termsOfUseStatus, termsOfUse: $termsOfUse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsOfUseStateImpl &&
            (identical(other.termsOfUseStatus, termsOfUseStatus) ||
                other.termsOfUseStatus == termsOfUseStatus) &&
            (identical(other.termsOfUse, termsOfUse) ||
                other.termsOfUse == termsOfUse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termsOfUseStatus, termsOfUse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsOfUseStateImplCopyWith<_$TermsOfUseStateImpl> get copyWith =>
      __$$TermsOfUseStateImplCopyWithImpl<_$TermsOfUseStateImpl>(
          this, _$identity);
}

abstract class _TermsOfUseState implements TermsOfUseState {
  const factory _TermsOfUseState(
      {final TermsOfUseStatus termsOfUseStatus,
      final GeneralSettingModel? termsOfUse}) = _$TermsOfUseStateImpl;

  @override
  TermsOfUseStatus get termsOfUseStatus;
  @override
  GeneralSettingModel? get termsOfUse;
  @override
  @JsonKey(ignore: true)
  _$$TermsOfUseStateImplCopyWith<_$TermsOfUseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
