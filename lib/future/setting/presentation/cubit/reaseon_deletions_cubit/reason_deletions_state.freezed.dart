// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reason_deletions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReasonDeletionsState {
  ReasonDeletionsStatus get reasonDeletionsStatus =>
      throw _privateConstructorUsedError;
  DeleteAccountStatus get deleteAccountStatus =>
      throw _privateConstructorUsedError;
  GeneralSettingModel? get reasonDeletionsModel =>
      throw _privateConstructorUsedError;
  int? get selectedReason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReasonDeletionsStateCopyWith<ReasonDeletionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReasonDeletionsStateCopyWith<$Res> {
  factory $ReasonDeletionsStateCopyWith(ReasonDeletionsState value,
          $Res Function(ReasonDeletionsState) then) =
      _$ReasonDeletionsStateCopyWithImpl<$Res, ReasonDeletionsState>;
  @useResult
  $Res call(
      {ReasonDeletionsStatus reasonDeletionsStatus,
      DeleteAccountStatus deleteAccountStatus,
      GeneralSettingModel? reasonDeletionsModel,
      int? selectedReason});
}

/// @nodoc
class _$ReasonDeletionsStateCopyWithImpl<$Res,
        $Val extends ReasonDeletionsState>
    implements $ReasonDeletionsStateCopyWith<$Res> {
  _$ReasonDeletionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasonDeletionsStatus = null,
    Object? deleteAccountStatus = null,
    Object? reasonDeletionsModel = freezed,
    Object? selectedReason = freezed,
  }) {
    return _then(_value.copyWith(
      reasonDeletionsStatus: null == reasonDeletionsStatus
          ? _value.reasonDeletionsStatus
          : reasonDeletionsStatus // ignore: cast_nullable_to_non_nullable
              as ReasonDeletionsStatus,
      deleteAccountStatus: null == deleteAccountStatus
          ? _value.deleteAccountStatus
          : deleteAccountStatus // ignore: cast_nullable_to_non_nullable
              as DeleteAccountStatus,
      reasonDeletionsModel: freezed == reasonDeletionsModel
          ? _value.reasonDeletionsModel
          : reasonDeletionsModel // ignore: cast_nullable_to_non_nullable
              as GeneralSettingModel?,
      selectedReason: freezed == selectedReason
          ? _value.selectedReason
          : selectedReason // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReasonDeletionsStateImplCopyWith<$Res>
    implements $ReasonDeletionsStateCopyWith<$Res> {
  factory _$$ReasonDeletionsStateImplCopyWith(_$ReasonDeletionsStateImpl value,
          $Res Function(_$ReasonDeletionsStateImpl) then) =
      __$$ReasonDeletionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReasonDeletionsStatus reasonDeletionsStatus,
      DeleteAccountStatus deleteAccountStatus,
      GeneralSettingModel? reasonDeletionsModel,
      int? selectedReason});
}

/// @nodoc
class __$$ReasonDeletionsStateImplCopyWithImpl<$Res>
    extends _$ReasonDeletionsStateCopyWithImpl<$Res, _$ReasonDeletionsStateImpl>
    implements _$$ReasonDeletionsStateImplCopyWith<$Res> {
  __$$ReasonDeletionsStateImplCopyWithImpl(_$ReasonDeletionsStateImpl _value,
      $Res Function(_$ReasonDeletionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasonDeletionsStatus = null,
    Object? deleteAccountStatus = null,
    Object? reasonDeletionsModel = freezed,
    Object? selectedReason = freezed,
  }) {
    return _then(_$ReasonDeletionsStateImpl(
      reasonDeletionsStatus: null == reasonDeletionsStatus
          ? _value.reasonDeletionsStatus
          : reasonDeletionsStatus // ignore: cast_nullable_to_non_nullable
              as ReasonDeletionsStatus,
      deleteAccountStatus: null == deleteAccountStatus
          ? _value.deleteAccountStatus
          : deleteAccountStatus // ignore: cast_nullable_to_non_nullable
              as DeleteAccountStatus,
      reasonDeletionsModel: freezed == reasonDeletionsModel
          ? _value.reasonDeletionsModel
          : reasonDeletionsModel // ignore: cast_nullable_to_non_nullable
              as GeneralSettingModel?,
      selectedReason: freezed == selectedReason
          ? _value.selectedReason
          : selectedReason // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ReasonDeletionsStateImpl implements _ReasonDeletionsState {
  const _$ReasonDeletionsStateImpl(
      {this.reasonDeletionsStatus = ReasonDeletionsStatus.initial,
      this.deleteAccountStatus = DeleteAccountStatus.initial,
      this.reasonDeletionsModel,
      this.selectedReason});

  @override
  @JsonKey()
  final ReasonDeletionsStatus reasonDeletionsStatus;
  @override
  @JsonKey()
  final DeleteAccountStatus deleteAccountStatus;
  @override
  final GeneralSettingModel? reasonDeletionsModel;
  @override
  final int? selectedReason;

  @override
  String toString() {
    return 'ReasonDeletionsState(reasonDeletionsStatus: $reasonDeletionsStatus, deleteAccountStatus: $deleteAccountStatus, reasonDeletionsModel: $reasonDeletionsModel, selectedReason: $selectedReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReasonDeletionsStateImpl &&
            (identical(other.reasonDeletionsStatus, reasonDeletionsStatus) ||
                other.reasonDeletionsStatus == reasonDeletionsStatus) &&
            (identical(other.deleteAccountStatus, deleteAccountStatus) ||
                other.deleteAccountStatus == deleteAccountStatus) &&
            (identical(other.reasonDeletionsModel, reasonDeletionsModel) ||
                other.reasonDeletionsModel == reasonDeletionsModel) &&
            (identical(other.selectedReason, selectedReason) ||
                other.selectedReason == selectedReason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reasonDeletionsStatus,
      deleteAccountStatus, reasonDeletionsModel, selectedReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReasonDeletionsStateImplCopyWith<_$ReasonDeletionsStateImpl>
      get copyWith =>
          __$$ReasonDeletionsStateImplCopyWithImpl<_$ReasonDeletionsStateImpl>(
              this, _$identity);
}

abstract class _ReasonDeletionsState implements ReasonDeletionsState {
  const factory _ReasonDeletionsState(
      {final ReasonDeletionsStatus reasonDeletionsStatus,
      final DeleteAccountStatus deleteAccountStatus,
      final GeneralSettingModel? reasonDeletionsModel,
      final int? selectedReason}) = _$ReasonDeletionsStateImpl;

  @override
  ReasonDeletionsStatus get reasonDeletionsStatus;
  @override
  DeleteAccountStatus get deleteAccountStatus;
  @override
  GeneralSettingModel? get reasonDeletionsModel;
  @override
  int? get selectedReason;
  @override
  @JsonKey(ignore: true)
  _$$ReasonDeletionsStateImplCopyWith<_$ReasonDeletionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
