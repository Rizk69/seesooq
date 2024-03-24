import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/wallet_api.dart';
import 'package:opensooq/future/wallet/data/models/store_payment_model.dart';
import 'package:opensooq/future/wallet/data/models/wallet_model.dart';
import 'package:opensooq/future/wallet/domain/use_cases/store_payment_wallet_usecase.dart';

abstract class WalletRemoteDataSource {
  Future<WalletModel> getWallet({
    required String userId,
  });
  Future<StorePaymentModel> storePayment({
    required StorePaymentParams params,
  });
}

@LazySingleton(as: WalletRemoteDataSource)
class WalletRemoteDataSourceImpl implements WalletRemoteDataSource {
  final WalletApi walletApi;

  WalletRemoteDataSourceImpl({
    required this.walletApi,
  });

  @override
  Future<WalletModel> getWallet({
    required String userId,
  }) async {
    return await walletApi.getWallet(
      userId: userId,
    );
  }

  @override
  Future<StorePaymentModel> storePayment({required StorePaymentParams params}) async {
    return await walletApi.storePayment(
      body: params.toJson(),
    );
  }
}
