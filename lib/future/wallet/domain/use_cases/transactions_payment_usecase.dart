import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/wallet/data/models/transaction_model.dart';
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart';

@lazySingleton
class TransactionsPaymentUseCase implements UseCases<TransactionModel, TransactionsPaymentParams> {
  final WalletRepository walletRepository;

  TransactionsPaymentUseCase({required this.walletRepository});

  @override
  Future<Either<Failures, TransactionModel>> call(TransactionsPaymentParams params) {
    return walletRepository.transactionsPayment(
      fromDate: params.fromDate,
      toDate: params.toDate,
      typePayment: params.typePayment,
    );
  }
}


class TransactionsPaymentParams {
  final String? fromDate;
  final String? toDate;
  final String? typePayment;

  TransactionsPaymentParams({
    this.fromDate,
    this.toDate,
    this.typePayment,
  });
}
