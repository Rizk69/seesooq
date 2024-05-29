import 'package:dartz/dartz.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/wallet/data/models/store_payment_model.dart';
import 'package:opensooq/future/wallet/data/models/transaction_model.dart';
import 'package:opensooq/future/wallet/data/models/wallet_model.dart';
import 'package:opensooq/future/wallet/domain/use_cases/store_payment_wallet_usecase.dart';

abstract class WalletRepository {
  Future<Either<Failures, WalletModel>> getWallet({
    required String userId,
  });
  Future<Either<Failures, StorePaymentModel>> storePayment({
    required StorePaymentParams params,
  });
  Future<Either<Failures, TransactionModel>> transactionsPayment({
    String? fromDate,
    String? toDate,
    String? typePayment,
  });


}
