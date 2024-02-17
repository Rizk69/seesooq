import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/usecasses/usecasess_shared.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/favorite/presentation/cubit/favorite_state.dart';
import 'package:opensooq/future/wallet/domain/use_cases/get_wallet_usecase.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final GetWalletUseCase getWalletUseCase = di.sl();

  FavoriteCubit() : super(const FavoriteState());

  static FavoriteCubit get(context) => BlocProvider.of(context);

  Future<void> getWallet() async {
    final result = await getWalletUseCase(NoParams());
    result.fold(
      (failure) => print('dsaklhdjksahdjkhsajkdhaskjhdjksahd'),
      (packages) => emit(state.copyWith()),
    );
  }

  void changeStatusView(int index) {
    emit(state.copyWith(indexStatusView: index));
  }
}
