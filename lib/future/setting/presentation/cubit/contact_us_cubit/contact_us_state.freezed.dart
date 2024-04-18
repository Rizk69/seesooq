// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_us_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactUsState {
  ContactUsStatus get contactUsStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactUsStateCopyWith<ContactUsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsStateCopyWith<$Res> {
  factory $ContactUsStateCopyWith(
          ContactUsState value, $Res Function(ContactUsState) then) =
      _$ContactUsStateCopyWithImpl<$Res, ContactUsState>;
  @useResult
  $Res call({ContactUsStatus contactUsStatus});
}

/// @nodoc
class _$ContactUsStateCopyWithImpl<$Res, $Val extends ContactUsState>
    implements $ContactUsStateCopyWith<$Res> {
  _$ContactUsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactUsStatus = null,
  }) {
    return _then(_value.copyWith(
      contactUsStatus: null == contactUsStatus
          ? _value.contactUsStatus
          : contactUsStatus // ignore: cast_nullable_to_non_nullable
              as ContactUsStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactUsStateImplCopyWith<$Res>
    implements $ContactUsStateCopyWith<$Res> {
  factory _$$ContactUsStateImplCopyWith(_$ContactUsStateImpl value,
          $Res Function(_$ContactUsStateImpl) then) =
      __$$ContactUsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContactUsStatus contactUsStatus});
}

/// @nodoc
class __$$ContactUsStateImplCopyWithImpl<$Res>
    extends _$ContactUsStateCopyWithImpl<$Res, _$ContactUsStateImpl>
    implements _$$ContactUsStateImplCopyWith<$Res> {
  __$$ContactUsStateImplCopyWithImpl(
      _$ContactUsStateImpl _value, $Res Function(_$ContactUsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactUsStatus = null,
  }) {
    return _then(_$ContactUsStateImpl(
      contactUsStatus: null == contactUsStatus
          ? _value.contactUsStatus
          : contactUsStatus // ignore: cast_nullable_to_non_nullable
              as ContactUsStatus,
    ));
  }
}

/// @nodoc

class _$ContactUsStateImpl implements _ContactUsState {
  const _$ContactUsStateImpl({this.contactUsStatus = ContactUsStatus.initial});

  @override
  @JsonKey()
  final ContactUsStatus contactUsStatus;

  @override
  String toString() {
    return 'ContactUsState(contactUsStatus: $contactUsStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUsStateImpl &&
            (identical(other.contactUsStatus, contactUsStatus) ||
                other.contactUsStatus == contactUsStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactUsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactUsStateImplCopyWith<_$ContactUsStateImpl> get copyWith =>
      __$$ContactUsStateImplCopyWithImpl<_$ContactUsStateImpl>(
          this, _$identity);
}

abstract class _ContactUsState implements ContactUsState {
  const factory _ContactUsState({final ContactUsStatus contactUsStatus}) =
      _$ContactUsStateImpl;

  @override
  ContactUsStatus get contactUsStatus;
  @override
  @JsonKey(ignore: true)
  _$$ContactUsStateImplCopyWith<_$ContactUsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
