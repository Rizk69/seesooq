import 'package:json_annotation/json_annotation.dart';

part 'wallet_model.g.dart';

WalletModel deserializeWalletModel(Map<String, dynamic> json) => _$WalletModelFromJson(json);

@JsonSerializable()
class WalletModel {
  WalletModel({
    this.balance,
  });

  String? balance;

  factory WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);
  Map<String, dynamic> toJson() => _$WalletModelToJson(this);

  //copyWith
  WalletModel copyWith({
    String? balance,
  }) {
    return WalletModel(
      balance: balance ?? this.balance,
    );
  }
}
