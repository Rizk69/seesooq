import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/wallet_api.dart';
import 'package:opensooq/future/wallet/data/models/wallet_model.dart';

abstract class WalletRemoteDataSource {
  Future<WalletModel> getWallet();
}

@LazySingleton(as: WalletRemoteDataSource)
class WalletRemoteDataSourceImpl implements WalletRemoteDataSource {
  final WalletApi walletApi;

  WalletRemoteDataSourceImpl({
    required this.walletApi,
  });

  @override
  Future<WalletModel> getWallet() async {
    return await walletApi.getWallet();
  }
}
