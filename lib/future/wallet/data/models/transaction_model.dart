import 'package:json_annotation/json_annotation.dart';

part 'transaction_model.g.dart';

TransactionModel deserializeTransactionModel(Map<String, dynamic> json) =>
    TransactionModel.fromJson(json);

@JsonSerializable()
class TransactionModel {
  String result;
  List<TransactionData> data;

  TransactionModel({required this.result, required this.data});

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}

@JsonSerializable()
class TransactionData {
  int id;
  String transactionDate;
  String typePayment;
  Payment payment;

  TransactionData({
    required this.id,
    required this.transactionDate,
    required this.typePayment,
    required this.payment,
  });

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDataToJson(this);
}

@JsonSerializable()
class Payment {
  int id;
  User user;
  dynamic packageId;
  dynamic walletId;
  String amount;
  String status;
  String transactionId;

  Payment({
    required this.id,
    required this.user,
    this.packageId,
    this.walletId,
    required this.amount,
    required this.status,
    required this.transactionId,
  });

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}

@JsonSerializable()
class User {
  int id;
  String name;
  String phone;
  String email;
  String image;

  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
