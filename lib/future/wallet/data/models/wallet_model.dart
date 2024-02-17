import 'package:json_annotation/json_annotation.dart';

part 'wallet_model.g.dart';

WalletModel deserializeWalletModel(Map<String, dynamic> json) => _$WalletModelFromJson(json);

@JsonSerializable()
class WalletModel {
  WalletModel({
    this.wallet,
  });

  String? wallet;

  factory WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);
  Map<String, dynamic> toJson() => _$WalletModelToJson(this);
}
