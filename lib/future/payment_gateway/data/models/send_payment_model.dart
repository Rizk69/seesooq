import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_payment_model.g.dart';

//desrialize the json
SendPaymentModel deserializeSendPaymentModel(Map<String, dynamic> json) => SendPaymentModel.fromJson(json);

@HiveType(typeId: 1)
@JsonSerializable()
class SendPaymentModel extends HiveObject {
  SendPaymentModel({
    this.message,
    this.payment,
  });

  @HiveField(0)
  String? message;
  @HiveField(1)
  Payment? payment;

  factory SendPaymentModel.fromJson(Map<String, dynamic> json) => _$SendPaymentModelFromJson(json);
  Map<String, dynamic> toJson() => _$SendPaymentModelToJson(this);
}

@HiveType(typeId: 2)
@JsonSerializable()
class Payment extends HiveObject {
  Payment({
    this.packageId,
    this.amount,
    this.currency,
    this.method,
    this.status,
    this.transactionId,
    this.transactionData,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  @HiveField(0)
  String? packageId;
  @HiveField(1)
  String? amount;
  @HiveField(2)
  String? currency;
  @HiveField(3)
  String? method;
  @HiveField(4)
  String? status;
  @HiveField(5)
  String? transactionId;
  @HiveField(6)
  String? transactionData;
  @HiveField(7)
  num? userId;
  @HiveField(8)
  String? updatedAt;
  @HiveField(9)
  String? createdAt;
  @HiveField(10)
  num? id;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}
