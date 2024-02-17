// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingState {
  List<BiometricType> get availableBiometrics =>
      throw _privateConstructorUsedError;
  bool get isFingerPrint => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call({List<BiometricType> availableBiometrics, bool isFingerPrint});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBiometrics = null,
    Object? isFingerPrint = null,
  }) {
    return _then(_value.copyWith(
      availableBiometrics: null == availableBiometrics
          ? _value.availableBiometrics
          : availableBiometrics // ignore: cast_nullable_to_non_nullable
              as List<BiometricType>,
      isFingerPrint: null == isFingerPrint
          ? _value.isFingerPrint
          : isFingerPrint // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BiometricType> availableBiometrics, bool isFingerPrint});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableBiometrics = null,
    Object? isFingerPrint = null,
  }) {
    return _then(_$SettingStateImpl(
      availableBiometrics: null == availableBiometrics
          ? _value._availableBiometrics
          : availableBiometrics // ignore: cast_nullable_to_non_nullable
              as List<BiometricType>,
      isFingerPrint: null == isFingerPrint
          ? _value.isFingerPrint
          : isFingerPrint // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl(
      {final List<BiometricType> availableBiometrics = const [],
      this.isFingerPrint = false})
      : _availableBiometrics = availableBiometrics;

  final List<BiometricType> _availableBiometrics;
  @override
  @JsonKey()
  List<BiometricType> get availableBiometrics {
    if (_availableBiometrics is EqualUnmodifiableListView)
      return _availableBiometrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableBiometrics);
  }

  @override
  @JsonKey()
  final bool isFingerPrint;

  @override
  String toString() {
    return 'SettingState(availableBiometrics: $availableBiometrics, isFingerPrint: $isFingerPrint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._availableBiometrics, _availableBiometrics) &&
            (identical(other.isFingerPrint, isFingerPrint) ||
                other.isFingerPrint == isFingerPrint));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_availableBiometrics), isFingerPrint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {final List<BiometricType> availableBiometrics,
      final bool isFingerPrint}) = _$SettingStateImpl;

  @override
  List<BiometricType> get availableBiometrics;
  @override
  bool get isFingerPrint;
  @override
  @JsonKey(ignore: true)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
