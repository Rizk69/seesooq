import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/payment_api.dart';
import 'package:opensooq/future/payment_gateway/data/models/send_payment_model.dart';

abstract class PaymentRemoteDataSource {
  Future<SendPaymentModel> subscriptionPackage();
}

@LazySingleton(as: PaymentRemoteDataSource)
class PaymentRemoteDataSourceImpl extends PaymentRemoteDataSource {
  final PaymentApi api;

  PaymentRemoteDataSourceImpl(this.api);
  @override
  Future<SendPaymentModel> subscriptionPackage() async {
    return await api.subscriptionPackage();
  }
}
