// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AboutUsState {
  AboutUsStatus get aboutUsStatus => throw _privateConstructorUsedError;
  GeneralSettingModel? get aboutUs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AboutUsStateCopyWith<AboutUsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutUsStateCopyWith<$Res> {
  factory $AboutUsStateCopyWith(
          AboutUsState value, $Res Function(AboutUsState) then) =
      _$AboutUsStateCopyWithImpl<$Res, AboutUsState>;
  @useResult
  $Res call({AboutUsStatus aboutUsStatus, GeneralSettingModel? aboutUs});
}

/// @nodoc
class _$AboutUsStateCopyWithImpl<$Res, $Val extends AboutUsState>
    implements $AboutUsStateCopyWith<$Res> {
  _$AboutUsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutUsStatus = null,
    Object? aboutUs = freezed,
  }) {
    return _then(_value.copyWith(
      aboutUsStatus: null == aboutUsStatus
          ? _value.aboutUsStatus
          : aboutUsStatus // ignore: cast_nullable_to_non_nullable
              as AboutUsStatus,
      aboutUs: freezed == aboutUs
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as GeneralSettingModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutUsStateImplCopyWith<$Res>
    implements $AboutUsStateCopyWith<$Res> {
  factory _$$AboutUsStateImplCopyWith(
          _$AboutUsStateImpl value, $Res Function(_$AboutUsStateImpl) then) =
      __$$AboutUsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AboutUsStatus aboutUsStatus, GeneralSettingModel? aboutUs});
}

/// @nodoc
class __$$AboutUsStateImplCopyWithImpl<$Res>
    extends _$AboutUsStateCopyWithImpl<$Res, _$AboutUsStateImpl>
    implements _$$AboutUsStateImplCopyWith<$Res> {
  __$$AboutUsStateImplCopyWithImpl(
      _$AboutUsStateImpl _value, $Res Function(_$AboutUsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutUsStatus = null,
    Object? aboutUs = freezed,
  }) {
    return _then(_$AboutUsStateImpl(
      aboutUsStatus: null == aboutUsStatus
          ? _value.aboutUsStatus
          : aboutUsStatus // ignore: cast_nullable_to_non_nullable
              as AboutUsStatus,
      aboutUs: freezed == aboutUs
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as GeneralSettingModel?,
    ));
  }
}

/// @nodoc

class _$AboutUsStateImpl implements _AboutUsState {
  const _$AboutUsStateImpl(
      {this.aboutUsStatus = AboutUsStatus.initial, this.aboutUs = null});

  @override
  @JsonKey()
  final AboutUsStatus aboutUsStatus;
  @override
  @JsonKey()
  final GeneralSettingModel? aboutUs;

  @override
  String toString() {
    return 'AboutUsState(aboutUsStatus: $aboutUsStatus, aboutUs: $aboutUs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutUsStateImpl &&
            (identical(other.aboutUsStatus, aboutUsStatus) ||
                other.aboutUsStatus == aboutUsStatus) &&
            (identical(other.aboutUs, aboutUs) || other.aboutUs == aboutUs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, aboutUsStatus, aboutUs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutUsStateImplCopyWith<_$AboutUsStateImpl> get copyWith =>
      __$$AboutUsStateImplCopyWithImpl<_$AboutUsStateImpl>(this, _$identity);
}

abstract class _AboutUsState implements AboutUsState {
  const factory _AboutUsState(
      {final AboutUsStatus aboutUsStatus,
      final GeneralSettingModel? aboutUs}) = _$AboutUsStateImpl;

  @override
  AboutUsStatus get aboutUsStatus;
  @override
  GeneralSettingModel? get aboutUs;
  @override
  @JsonKey(ignore: true)
  _$$AboutUsStateImplCopyWith<_$AboutUsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
