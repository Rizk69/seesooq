import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/wallet/domain/use_cases/get_wallet_usecase.dart';
import 'package:opensooq/future/wallet/domain/use_cases/store_payment_wallet_usecase.dart';
import 'package:opensooq/future/wallet/domain/use_cases/transactions_payment_usecase.dart';
import 'package:opensooq/future/wallet/presentation/cubit/wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  final GetWalletUseCase getWalletUseCase = di.sl();
  final StorePaymentWalletUseCase storePaymentWalletUseCase = di.sl();
  final TransactionsPaymentUseCase transactionsPaymentUseCase = di.sl();

  WalletCubit() : super(const WalletState());

  static WalletCubit get(context) => BlocProvider.of<WalletCubit>(context);

  Future<void> getWallet({
    required String userId,
  }) async {
    final result = await getWalletUseCase(userId);
    result.fold(
      (failure) => emit(state.copyWith()),
      (wallet) => emit(state.copyWith(walletModel: wallet)),
    );
  }

  Future<void> storePayment(
      {required String amount, required String transactionId}) async {
    final result = await storePaymentWalletUseCase(StorePaymentParams(
        type: 'wallet_recharge',
        amount: amount.toString(),
        transactionData: 'test',
        transactionId: transactionId,
        packageId: '1'));
    result.fold(
      (failure) => emit(state.copyWith()),
      (storePayment) {
        num previousBalance =
            num.parse(state.walletModel?.balance.toString() ?? '0');
        num newBalance = previousBalance + num.parse(amount.toString());
        emit(
          state.copyWith(
              storePaymentModel: storePayment,
              walletModel: state.walletModel?.copyWith(
                balance: newBalance.toString(),
              )),
        );
      },
    );
  }

  Future<void> transactionsPayment(
      {String? fromDate, String? toDate, String? typePayment}) async {
    final result = await transactionsPaymentUseCase(TransactionsPaymentParams(
        fromDate: fromDate, toDate: toDate, typePayment: typePayment));
    result.fold(
      (failure) => emit(state.copyWith()),
      (transactionsPayment) => emit(state.copyWith()),
    );
  }
}
