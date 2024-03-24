import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/payment_gateway/data/models/send_payment_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../api/end_point.dart';

part 'payment_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class PaymentApi {
  @factoryMethod
  factory PaymentApi(Dio dio) = _PaymentApi;

  @GET(EndPoint.storePayment)
  Future<SendPaymentModel> subscriptionPackage();
}
