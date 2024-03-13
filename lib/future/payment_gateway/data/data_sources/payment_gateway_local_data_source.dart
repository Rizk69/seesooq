import 'package:injectable/injectable.dart';
import 'package:opensooq/core/utils/cache_helper.dart';
import 'package:opensooq/future/payment_gateway/data/models/send_payment_model.dart';

abstract class PaymentRemoteDataSource {
  Future<void> saveTransactionPaymentToLocal(SendPaymentModel sendPaymentModel);
  Future<bool> getTransactionPaymentFromLocal();
}

@LazySingleton(as: PaymentRemoteDataSource)
class PaymentRemoteDataSourceImpl extends PaymentRemoteDataSource {
  final CacheHelper cacheHelper;

  PaymentRemoteDataSourceImpl(this.cacheHelper);

  @override
  Future<bool> getTransactionPaymentFromLocal() async {
    return await cacheHelper.hiveGetDataById(
      0,
    );
  }

  @override
  Future<void> saveTransactionPaymentToLocal(SendPaymentModel sendPaymentModel) async {
    return await cacheHelper.hivePutData<SendPaymentModel>(sendPaymentModel, 'payment');
  }
}
