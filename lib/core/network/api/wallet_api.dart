import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/wallet/data/models/store_payment_model.dart';
import 'package:opensooq/future/wallet/data/models/transaction_model.dart';
import 'package:opensooq/future/wallet/data/models/wallet_model.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class WalletApi {
  @factoryMethod
  factory WalletApi(
    Dio dio,
  ) = _WalletApi;

  @GET(EndPoint.getWallet)
  Future<WalletModel> getWallet({
    @Path('userId') required String userId,
  });
  @POST(EndPoint.storePayment)
  Future<StorePaymentModel> storePayment({
    @Body() required Map<String, dynamic> body,
  });
  @POST(EndPoint.transactionsPayment)
  Future<TransactionModel> transactionsPayment({
    @Body() @Path('from_date') String? fromDate,
    @Path('to_date') String? toDate,
    @Path('type_payment') String? typePayment,
  });
}
