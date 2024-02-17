import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';
import 'package:opensooq/future/wallet/data/data_sources/wallet_remote_data_source.dart';
import 'package:opensooq/future/wallet/data/models/wallet_model.dart';
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart';

@LazySingleton(as: WalletRepository)
class WalletRepositoryImpl implements WalletRepository {
  final WalletRemoteDataSource walletRemoteDataSource;

  WalletRepositoryImpl({
    required this.walletRemoteDataSource,
  });

  @override
  Future<Either<Failures, WalletModel>> getWallet() async {
    return executeAndCatchError(() => walletRemoteDataSource.getWallet());
  }
}
