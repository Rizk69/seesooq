import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/wallet/data/models/store_payment_model.dart';
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart';

@lazySingleton
class StorePaymentWalletUseCase implements UseCases<StorePaymentModel, StorePaymentParams> {
  final WalletRepository walletRepository;

  StorePaymentWalletUseCase({required this.walletRepository});

  @override
  Future<Either<Failures, StorePaymentModel>> call(StorePaymentParams params) {
    return walletRepository.storePayment(
      params: params,
    );
  }
}

class StorePaymentParams extends Equatable {
  final String type;
  final String amount;
  final String method;
  // status, transaction_id
  final String status;
  final String transactionId;
  //transaction_data
  final String transactionData;
  final String currency;
  final String? packageId;

  const StorePaymentParams({
    required this.type,
    required this.amount,
    this.currency = 'USD',
    this.method = 'stripe',
    this.status = 'successful',
    required this.transactionId,
    required this.transactionData,
    this.packageId,
  });
  // toJson
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'amount': amount,
      'method': method,
      'status': status,
      'transaction_id': transactionId,
      'transaction_data': transactionData,
      'package_id': packageId,
      'currency': currency,
    };
  }

  @override
  List<Object> get props => [
        type,
        amount,
        method,
        currency,
        status,
        transactionId,
        transactionData,
        packageId ?? '',
      ];
}
