import 'package:dartz/dartz.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/wallet/data/models/wallet_model.dart';

abstract class WalletRepository {
  Future<Either<Failures, WalletModel>> getWallet();
}
