// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'frequently-asked-questions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FrequentlyAskedState {
  FrequentlyAskedStatus get frequentlyAskedStatus =>
      throw _privateConstructorUsedError;
  GeneralSettingModel? get frequentlyAskedModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FrequentlyAskedStateCopyWith<FrequentlyAskedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrequentlyAskedStateCopyWith<$Res> {
  factory $FrequentlyAskedStateCopyWith(FrequentlyAskedState value,
          $Res Function(FrequentlyAskedState) then) =
      _$FrequentlyAskedStateCopyWithImpl<$Res, FrequentlyAskedState>;
  @useResult
  $Res call(
      {FrequentlyAskedStatus frequentlyAskedStatus,
      GeneralSettingModel? frequentlyAskedModel});
}

/// @nodoc
class _$FrequentlyAskedStateCopyWithImpl<$Res,
        $Val extends FrequentlyAskedState>
    implements $FrequentlyAskedStateCopyWith<$Res> {
  _$FrequentlyAskedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequentlyAskedStatus = null,
    Object? frequentlyAskedModel = freezed,
  }) {
    return _then(_value.copyWith(
      frequentlyAskedStatus: null == frequentlyAskedStatus
          ? _value.frequentlyAskedStatus
          : frequentlyAskedStatus // ignore: cast_nullable_to_non_nullable
              as FrequentlyAskedStatus,
      frequentlyAskedModel: freezed == frequentlyAskedModel
          ? _value.frequentlyAskedModel
          : frequentlyAskedModel // ignore: cast_nullable_to_non_nullable
              as GeneralSettingModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FrequentlyAskedStateImplCopyWith<$Res>
    implements $FrequentlyAskedStateCopyWith<$Res> {
  factory _$$FrequentlyAskedStateImplCopyWith(_$FrequentlyAskedStateImpl value,
          $Res Function(_$FrequentlyAskedStateImpl) then) =
      __$$FrequentlyAskedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FrequentlyAskedStatus frequentlyAskedStatus,
      GeneralSettingModel? frequentlyAskedModel});
}

/// @nodoc
class __$$FrequentlyAskedStateImplCopyWithImpl<$Res>
    extends _$FrequentlyAskedStateCopyWithImpl<$Res, _$FrequentlyAskedStateImpl>
    implements _$$FrequentlyAskedStateImplCopyWith<$Res> {
  __$$FrequentlyAskedStateImplCopyWithImpl(_$FrequentlyAskedStateImpl _value,
      $Res Function(_$FrequentlyAskedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequentlyAskedStatus = null,
    Object? frequentlyAskedModel = freezed,
  }) {
    return _then(_$FrequentlyAskedStateImpl(
      frequentlyAskedStatus: null == frequentlyAskedStatus
          ? _value.frequentlyAskedStatus
          : frequentlyAskedStatus // ignore: cast_nullable_to_non_nullable
              as FrequentlyAskedStatus,
      frequentlyAskedModel: freezed == frequentlyAskedModel
          ? _value.frequentlyAskedModel
          : frequentlyAskedModel // ignore: cast_nullable_to_non_nullable
              as GeneralSettingModel?,
    ));
  }
}

/// @nodoc

class _$FrequentlyAskedStateImpl implements _FrequentlyAskedState {
  const _$FrequentlyAskedStateImpl(
      {this.frequentlyAskedStatus = FrequentlyAskedStatus.initial,
      this.frequentlyAskedModel = null});

  @override
  @JsonKey()
  final FrequentlyAskedStatus frequentlyAskedStatus;
  @override
  @JsonKey()
  final GeneralSettingModel? frequentlyAskedModel;

  @override
  String toString() {
    return 'FrequentlyAskedState(frequentlyAskedStatus: $frequentlyAskedStatus, frequentlyAskedModel: $frequentlyAskedModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrequentlyAskedStateImpl &&
            (identical(other.frequentlyAskedStatus, frequentlyAskedStatus) ||
                other.frequentlyAskedStatus == frequentlyAskedStatus) &&
            (identical(other.frequentlyAskedModel, frequentlyAskedModel) ||
                other.frequentlyAskedModel == frequentlyAskedModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, frequentlyAskedStatus, frequentlyAskedModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrequentlyAskedStateImplCopyWith<_$FrequentlyAskedStateImpl>
      get copyWith =>
          __$$FrequentlyAskedStateImplCopyWithImpl<_$FrequentlyAskedStateImpl>(
              this, _$identity);
}

abstract class _FrequentlyAskedState implements FrequentlyAskedState {
  const factory _FrequentlyAskedState(
          {final FrequentlyAskedStatus frequentlyAskedStatus,
          final GeneralSettingModel? frequentlyAskedModel}) =
      _$FrequentlyAskedStateImpl;

  @override
  FrequentlyAskedStatus get frequentlyAskedStatus;
  @override
  GeneralSettingModel? get frequentlyAskedModel;
  @override
  @JsonKey(ignore: true)
  _$$FrequentlyAskedStateImplCopyWith<_$FrequentlyAskedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
