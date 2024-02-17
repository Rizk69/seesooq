import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasess_shared.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/wallet/data/models/wallet_model.dart';
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart';

@lazySingleton
class GetWalletUseCase implements UseCases<WalletModel, NoParams> {
  final WalletRepository walletRepository;

  GetWalletUseCase({required this.walletRepository});

  @override
  Future<Either<Failures, WalletModel>> call(NoParams params) {
    return walletRepository.getWallet();
  }
}
