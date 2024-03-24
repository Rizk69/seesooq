import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/wallet/data/models/store_payment_model.dart';
import 'package:opensooq/future/wallet/data/models/wallet_model.dart';

part 'wallet_state.freezed.dart';

enum WalletStatus { initial, loading, loaded, error }

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    @Default(null) WalletModel? walletModel,
    @Default(null) StorePaymentModel? storePaymentModel,
  }) = _WalletState;
}
