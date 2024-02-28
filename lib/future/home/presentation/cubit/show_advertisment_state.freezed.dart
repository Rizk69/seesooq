// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_advertisment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShowAdvertismentState {
  ShowAdvertismentStatus get storyStatus => throw _privateConstructorUsedError;
  SingleAdvertismentModel? get advertisementModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowAdvertismentStateCopyWith<ShowAdvertismentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowAdvertismentStateCopyWith<$Res> {
  factory $ShowAdvertismentStateCopyWith(ShowAdvertismentState value,
          $Res Function(ShowAdvertismentState) then) =
      _$ShowAdvertismentStateCopyWithImpl<$Res, ShowAdvertismentState>;
  @useResult
  $Res call(
      {ShowAdvertismentStatus storyStatus,
      SingleAdvertismentModel? advertisementModel});
}

/// @nodoc
class _$ShowAdvertismentStateCopyWithImpl<$Res,
        $Val extends ShowAdvertismentState>
    implements $ShowAdvertismentStateCopyWith<$Res> {
  _$ShowAdvertismentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storyStatus = null,
    Object? advertisementModel = freezed,
  }) {
    return _then(_value.copyWith(
      storyStatus: null == storyStatus
          ? _value.storyStatus
          : storyStatus // ignore: cast_nullable_to_non_nullable
              as ShowAdvertismentStatus,
      advertisementModel: freezed == advertisementModel
          ? _value.advertisementModel
          : advertisementModel // ignore: cast_nullable_to_non_nullable
              as SingleAdvertismentModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowAdvertismentStateImplCopyWith<$Res>
    implements $ShowAdvertismentStateCopyWith<$Res> {
  factory _$$ShowAdvertismentStateImplCopyWith(
          _$ShowAdvertismentStateImpl value,
          $Res Function(_$ShowAdvertismentStateImpl) then) =
      __$$ShowAdvertismentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShowAdvertismentStatus storyStatus,
      SingleAdvertismentModel? advertisementModel});
}

/// @nodoc
class __$$ShowAdvertismentStateImplCopyWithImpl<$Res>
    extends _$ShowAdvertismentStateCopyWithImpl<$Res,
        _$ShowAdvertismentStateImpl>
    implements _$$ShowAdvertismentStateImplCopyWith<$Res> {
  __$$ShowAdvertismentStateImplCopyWithImpl(_$ShowAdvertismentStateImpl _value,
      $Res Function(_$ShowAdvertismentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storyStatus = null,
    Object? advertisementModel = freezed,
  }) {
    return _then(_$ShowAdvertismentStateImpl(
      storyStatus: null == storyStatus
          ? _value.storyStatus
          : storyStatus // ignore: cast_nullable_to_non_nullable
              as ShowAdvertismentStatus,
      advertisementModel: freezed == advertisementModel
          ? _value.advertisementModel
          : advertisementModel // ignore: cast_nullable_to_non_nullable
              as SingleAdvertismentModel?,
    ));
  }
}

/// @nodoc

class _$ShowAdvertismentStateImpl implements _ShowAdvertismentState {
  const _$ShowAdvertismentStateImpl(
      {this.storyStatus = ShowAdvertismentStatus.initial,
      this.advertisementModel = null});

  @override
  @JsonKey()
  final ShowAdvertismentStatus storyStatus;
  @override
  @JsonKey()
  final SingleAdvertismentModel? advertisementModel;

  @override
  String toString() {
    return 'ShowAdvertismentState(storyStatus: $storyStatus, advertisementModel: $advertisementModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAdvertismentStateImpl &&
            (identical(other.storyStatus, storyStatus) ||
                other.storyStatus == storyStatus) &&
            (identical(other.advertisementModel, advertisementModel) ||
                other.advertisementModel == advertisementModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storyStatus, advertisementModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAdvertismentStateImplCopyWith<_$ShowAdvertismentStateImpl>
      get copyWith => __$$ShowAdvertismentStateImplCopyWithImpl<
          _$ShowAdvertismentStateImpl>(this, _$identity);
}

abstract class _ShowAdvertismentState implements ShowAdvertismentState {
  const factory _ShowAdvertismentState(
          {final ShowAdvertismentStatus storyStatus,
          final SingleAdvertismentModel? advertisementModel}) =
      _$ShowAdvertismentStateImpl;

  @override
  ShowAdvertismentStatus get storyStatus;
  @override
  SingleAdvertismentModel? get advertisementModel;
  @override
  @JsonKey(ignore: true)
  _$$ShowAdvertismentStateImplCopyWith<_$ShowAdvertismentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
