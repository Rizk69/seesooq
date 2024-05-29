// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_gatway_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentGatewayState {
  bool get isLoading => throw _privateConstructorUsedError;
  PaymentIntent? get paymentIntent => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentGatewayStateCopyWith<PaymentGatewayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentGatewayStateCopyWith<$Res> {
  factory $PaymentGatewayStateCopyWith(
          PaymentGatewayState value, $Res Function(PaymentGatewayState) then) =
      _$PaymentGatewayStateCopyWithImpl<$Res, PaymentGatewayState>;
  @useResult
  $Res call(
      {bool isLoading,
      PaymentIntent? paymentIntent,
      PaymentStatus paymentStatus});

  $PaymentIntentCopyWith<$Res>? get paymentIntent;
}

/// @nodoc
class _$PaymentGatewayStateCopyWithImpl<$Res, $Val extends PaymentGatewayState>
    implements $PaymentGatewayStateCopyWith<$Res> {
  _$PaymentGatewayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? paymentIntent = freezed,
    Object? paymentStatus = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as PaymentIntent?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentIntentCopyWith<$Res>? get paymentIntent {
    if (_value.paymentIntent == null) {
      return null;
    }

    return $PaymentIntentCopyWith<$Res>(_value.paymentIntent!, (value) {
      return _then(_value.copyWith(paymentIntent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentGatewayStateImplCopyWith<$Res>
    implements $PaymentGatewayStateCopyWith<$Res> {
  factory _$$PaymentGatewayStateImplCopyWith(_$PaymentGatewayStateImpl value,
          $Res Function(_$PaymentGatewayStateImpl) then) =
      __$$PaymentGatewayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      PaymentIntent? paymentIntent,
      PaymentStatus paymentStatus});

  @override
  $PaymentIntentCopyWith<$Res>? get paymentIntent;
}

/// @nodoc
class __$$PaymentGatewayStateImplCopyWithImpl<$Res>
    extends _$PaymentGatewayStateCopyWithImpl<$Res, _$PaymentGatewayStateImpl>
    implements _$$PaymentGatewayStateImplCopyWith<$Res> {
  __$$PaymentGatewayStateImplCopyWithImpl(_$PaymentGatewayStateImpl _value,
      $Res Function(_$PaymentGatewayStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? paymentIntent = freezed,
    Object? paymentStatus = null,
  }) {
    return _then(_$PaymentGatewayStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentIntent: freezed == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as PaymentIntent?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
    ));
  }
}

/// @nodoc

class _$PaymentGatewayStateImpl implements _PaymentGatewayState {
  const _$PaymentGatewayStateImpl(
      {this.isLoading = false,
      this.paymentIntent = null,
      this.paymentStatus = PaymentStatus.initial});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final PaymentIntent? paymentIntent;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;

  @override
  String toString() {
    return 'PaymentGatewayState(isLoading: $isLoading, paymentIntent: $paymentIntent, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentGatewayStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.paymentIntent, paymentIntent) ||
                other.paymentIntent == paymentIntent) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, paymentIntent, paymentStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentGatewayStateImplCopyWith<_$PaymentGatewayStateImpl> get copyWith =>
      __$$PaymentGatewayStateImplCopyWithImpl<_$PaymentGatewayStateImpl>(
          this, _$identity);
}

abstract class _PaymentGatewayState implements PaymentGatewayState {
  const factory _PaymentGatewayState(
      {final bool isLoading,
      final PaymentIntent? paymentIntent,
      final PaymentStatus paymentStatus}) = _$PaymentGatewayStateImpl;

  @override
  bool get isLoading;
  @override
  PaymentIntent? get paymentIntent;
  @override
  PaymentStatus get paymentStatus;
  @override
  @JsonKey(ignore: true)
  _$$PaymentGatewayStateImplCopyWith<_$PaymentGatewayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
