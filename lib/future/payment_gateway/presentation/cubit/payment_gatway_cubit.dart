import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:opensooq/core/utils/app_constants.dart';
import 'package:opensooq/future/payment_gateway/presentation/cubit/payment_gatway_state.dart';

class PaymentGatewayCubit extends Cubit<PaymentGatewayState> {
  PaymentGatewayCubit() : super(const PaymentGatewayState());

  void getPaymentGateway(String price) async {
    EasyLoading.show(status: 'loading...');

    Stripe.publishableKey = AppConstants.publishableKey;
    Stripe.merchantIdentifier = '';
    Stripe.urlScheme = Stripe.urlScheme;
    createPaymentIntent(price, 'usd').then((value) {
      PaymentIntent result = PaymentIntent(
        clientSecret: value['client_secret'],
        paymentMethodId: value['payment_method'],
        status: PaymentIntentsStatus.Succeeded,
        id: value['id'],
        amount: value['amount'],
        captureMethod: CaptureMethod.Automatic,
        currency: value['currency'],
        description: value['description'],
        confirmationMethod: ConfirmationMethod.Automatic,
        created: '1111',
        livemode: value['livemode'],
      );

      Stripe.instance
          .initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: result.clientSecret,
          merchantDisplayName: 'SeeSooq',
          style: ThemeMode.system,
        ),
      )
          .whenComplete(() {
        EasyLoading.dismiss();
        emit(state.copyWith(paymentIntent: result, paymentStatus: PaymentStatus.presentingSheet));
        Future.delayed(const Duration(seconds: 2), () {
          pay();
        });
      });
    });
  }

  Future createPaymentIntent(String amount, String currency) async {
    print('createPaymentIntent');
    print('amount: $amount');
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount': (int.parse(amount) * 100).toString(),
        'currency': currency,
      };

      //Make post request to Stripe
      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {'Authorization': 'Bearer ${AppConstants.secretKey}', 'Content-Type': 'application/x-www-form-urlencoded'},
        body: body,
      );
      return json.decode(response.body);
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<void> pay() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      PaymentIntent paymentIntent = await Stripe.instance.retrievePaymentIntent(state.paymentIntent!.clientSecret);
      if (paymentIntent.status == PaymentIntentsStatus.Succeeded) {
        emit(state.copyWith(paymentStatus: PaymentStatus.success, paymentIntent: paymentIntent));
      }
    } on StripeException catch (e) {
      EasyLoading.showError(e.error.message ?? '');
      emit(state.copyWith(paymentStatus: PaymentStatus.failure));
    }
  }
}
