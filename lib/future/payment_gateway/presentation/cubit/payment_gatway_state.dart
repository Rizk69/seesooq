import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_gatway_state.freezed.dart';

enum PaymentStatus { initial, success, failure, presentingSheet, loding }

@freezed
class PaymentGatewayState with _$PaymentGatewayState {
  const factory PaymentGatewayState({
    @Default(false) bool isLoading,
    @Default(null) PaymentIntent? paymentIntent,
    @Default(PaymentStatus.initial) PaymentStatus paymentStatus,
  }) = _PaymentGatewayState;
}
