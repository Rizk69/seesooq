import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/usecasses/usecasess_shared.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/wallet/domain/use_cases/get_wallet_usecase.dart';
import 'package:opensooq/future/wallet/presentation/cubit/wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  final GetWalletUseCase getWalletUseCase = di.sl();

  WalletCubit() : super(const WalletState());

  Future<void> getWallet() async {
    final result = await getWalletUseCase(NoParams());
    result.fold(
      (failure) => print('dsaklhdjksahdjkhsajkdhaskjhdjksahd'),
      (packages) => emit(state.copyWith(walletModel: packages)),
    );
  }
}
