import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';
import 'package:opensooq/future/wallet/data/data_sources/wallet_remote_data_source.dart';
import 'package:opensooq/future/wallet/data/models/store_payment_model.dart';
import 'package:opensooq/future/wallet/data/models/transaction_model.dart';
import 'package:opensooq/future/wallet/data/models/wallet_model.dart';
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart';
import 'package:opensooq/future/wallet/domain/use_cases/store_payment_wallet_usecase.dart';

@LazySingleton(as: WalletRepository)
class WalletRepositoryImpl implements WalletRepository {
  final WalletRemoteDataSource walletRemoteDataSource;

  WalletRepositoryImpl({
    required this.walletRemoteDataSource,
  });

  @override
  Future<Either<Failures, WalletModel>> getWallet({
    required String userId,
  }) async {
    return executeAndCatchError(() => walletRemoteDataSource.getWallet(
          userId: userId,
        ));
  }

  @override
  Future<Either<Failures, StorePaymentModel>> storePayment(
      {required StorePaymentParams params}) {
    return executeAndCatchError(() => walletRemoteDataSource.storePayment(
          params: params,
        ));
  }

  @override
  Future<Either<Failures, TransactionModel>> transactionsPayment(
      {String? fromDate, String? toDate, String? typePayment}) {
    return executeAndCatchError(
        () => walletRemoteDataSource.transactionsPayment(
              fromDate: fromDate,
              toDate: toDate,
              typePayment: typePayment,
            ));
  }
}
