// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_payment_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SendPaymentModelAdapter extends TypeAdapter<SendPaymentModel> {
  @override
  final int typeId = 1;

  @override
  SendPaymentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SendPaymentModel(
      message: fields[0] as String?,
      payment: fields[1] as Payment?,
    );
  }

  @override
  void write(BinaryWriter writer, SendPaymentModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.message)
      ..writeByte(1)
      ..write(obj.payment);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SendPaymentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PaymentAdapter extends TypeAdapter<Payment> {
  @override
  final int typeId = 2;

  @override
  Payment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Payment(
      packageId: fields[0] as String?,
      amount: fields[1] as String?,
      currency: fields[2] as String?,
      method: fields[3] as String?,
      status: fields[4] as String?,
      transactionId: fields[5] as String?,
      transactionData: fields[6] as String?,
      userId: fields[7] as num?,
      updatedAt: fields[8] as String?,
      createdAt: fields[9] as String?,
      id: fields[10] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, Payment obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.packageId)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.currency)
      ..writeByte(3)
      ..write(obj.method)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.transactionId)
      ..writeByte(6)
      ..write(obj.transactionData)
      ..writeByte(7)
      ..write(obj.userId)
      ..writeByte(8)
      ..write(obj.updatedAt)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendPaymentModel _$SendPaymentModelFromJson(Map<String, dynamic> json) =>
    SendPaymentModel(
      message: json['message'] as String?,
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendPaymentModelToJson(SendPaymentModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'payment': instance.payment,
    };

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      packageId: json['packageId'] as String?,
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      method: json['method'] as String?,
      status: json['status'] as String?,
      transactionId: json['transactionId'] as String?,
      transactionData: json['transactionData'] as String?,
      userId: json['userId'] as num?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      id: json['id'] as num?,
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'packageId': instance.packageId,
      'amount': instance.amount,
      'currency': instance.currency,
      'method': instance.method,
      'status': instance.status,
      'transactionId': instance.transactionId,
      'transactionData': instance.transactionData,
      'userId': instance.userId,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'id': instance.id,
    };
