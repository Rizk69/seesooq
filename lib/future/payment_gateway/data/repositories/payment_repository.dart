import 'package:injectable/injectable.dart';
import 'package:opensooq/future/payment_gateway/data/data_sources/payment_gateway_remote_data_source.dart';
import 'package:opensooq/future/payment_gateway/data/models/send_payment_model.dart';

abstract class PaymentRepository {
  Future<SendPaymentModel> subscriptionPackage();
}

@LazySingleton(as: PaymentRepository)
class PaymentRepositoryImpl extends PaymentRepository {
  final PaymentRemoteDataSource remoteDataSource;

  PaymentRepositoryImpl(this.remoteDataSource);
  @override
  Future<SendPaymentModel> subscriptionPackage() async {
    return await remoteDataSource.subscriptionPackage();
  }
}
