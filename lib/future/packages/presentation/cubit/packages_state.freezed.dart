// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packages_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PackagesState {
  PackagesModel? get packagesModel => throw _privateConstructorUsedError;
  PackagesStatus get status => throw _privateConstructorUsedError;
  SegmentButtonState get segmentButtonState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackagesStateCopyWith<PackagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesStateCopyWith<$Res> {
  factory $PackagesStateCopyWith(
          PackagesState value, $Res Function(PackagesState) then) =
      _$PackagesStateCopyWithImpl<$Res, PackagesState>;
  @useResult
  $Res call(
      {PackagesModel? packagesModel,
      PackagesStatus status,
      SegmentButtonState segmentButtonState});
}

/// @nodoc
class _$PackagesStateCopyWithImpl<$Res, $Val extends PackagesState>
    implements $PackagesStateCopyWith<$Res> {
  _$PackagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packagesModel = freezed,
    Object? status = null,
    Object? segmentButtonState = null,
  }) {
    return _then(_value.copyWith(
      packagesModel: freezed == packagesModel
          ? _value.packagesModel
          : packagesModel // ignore: cast_nullable_to_non_nullable
              as PackagesModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PackagesStatus,
      segmentButtonState: null == segmentButtonState
          ? _value.segmentButtonState
          : segmentButtonState // ignore: cast_nullable_to_non_nullable
              as SegmentButtonState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackagesStateImplCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory _$$PackagesStateImplCopyWith(
          _$PackagesStateImpl value, $Res Function(_$PackagesStateImpl) then) =
      __$$PackagesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PackagesModel? packagesModel,
      PackagesStatus status,
      SegmentButtonState segmentButtonState});
}

/// @nodoc
class __$$PackagesStateImplCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res, _$PackagesStateImpl>
    implements _$$PackagesStateImplCopyWith<$Res> {
  __$$PackagesStateImplCopyWithImpl(
      _$PackagesStateImpl _value, $Res Function(_$PackagesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packagesModel = freezed,
    Object? status = null,
    Object? segmentButtonState = null,
  }) {
    return _then(_$PackagesStateImpl(
      packagesModel: freezed == packagesModel
          ? _value.packagesModel
          : packagesModel // ignore: cast_nullable_to_non_nullable
              as PackagesModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PackagesStatus,
      segmentButtonState: null == segmentButtonState
          ? _value.segmentButtonState
          : segmentButtonState // ignore: cast_nullable_to_non_nullable
              as SegmentButtonState,
    ));
  }
}

/// @nodoc

class _$PackagesStateImpl implements _PackagesState {
  const _$PackagesStateImpl(
      {this.packagesModel = null,
      this.status = PackagesStatus.initial,
      this.segmentButtonState = SegmentButtonState.day});

  @override
  @JsonKey()
  final PackagesModel? packagesModel;
  @override
  @JsonKey()
  final PackagesStatus status;
  @override
  @JsonKey()
  final SegmentButtonState segmentButtonState;

  @override
  String toString() {
    return 'PackagesState(packagesModel: $packagesModel, status: $status, segmentButtonState: $segmentButtonState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagesStateImpl &&
            (identical(other.packagesModel, packagesModel) ||
                other.packagesModel == packagesModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.segmentButtonState, segmentButtonState) ||
                other.segmentButtonState == segmentButtonState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, packagesModel, status, segmentButtonState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagesStateImplCopyWith<_$PackagesStateImpl> get copyWith =>
      __$$PackagesStateImplCopyWithImpl<_$PackagesStateImpl>(this, _$identity);
}

abstract class _PackagesState implements PackagesState {
  const factory _PackagesState(
      {final PackagesModel? packagesModel,
      final PackagesStatus status,
      final SegmentButtonState segmentButtonState}) = _$PackagesStateImpl;

  @override
  PackagesModel? get packagesModel;
  @override
  PackagesStatus get status;
  @override
  SegmentButtonState get segmentButtonState;
  @override
  @JsonKey(ignore: true)
  _$$PackagesStateImplCopyWith<_$PackagesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
