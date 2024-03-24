StorePaymentModel deserializeStorePaymentModel(Map<String, dynamic> json) => StorePaymentModel.fromJson(json);

class StorePaymentModel {
  StorePaymentModel({
    this.message,
    this.payment,
  });

  StorePaymentModel.fromJson(dynamic json) {
    message = json['message'];
    payment = json['payment'] != null ? Payment.fromJson(json['payment']) : null;
  }
  String? message;
  Payment? payment;
  StorePaymentModel copyWith({
    String? message,
    Payment? payment,
  }) =>
      StorePaymentModel(
        message: message ?? this.message,
        payment: payment ?? this.payment,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (payment != null) {
      map['payment'] = payment?.toJson();
    }
    return map;
  }
}

class Payment {
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

  Payment.fromJson(dynamic json) {
    packageId = json['package_id'];
    amount = json['amount'];
    currency = json['currency'];
    method = json['method'];
    status = json['status'];
    transactionId = json['transaction_id'];
    transactionData = json['transaction_data'];
    userId = json['user_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  String? packageId;
  String? amount;
  String? currency;
  String? method;
  String? status;
  String? transactionId;
  String? transactionData;
  num? userId;
  String? updatedAt;
  String? createdAt;
  num? id;
  Payment copyWith({
    String? packageId,
    String? amount,
    String? currency,
    String? method,
    String? status,
    String? transactionId,
    String? transactionData,
    num? userId,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) =>
      Payment(
        packageId: packageId ?? this.packageId,
        amount: amount ?? this.amount,
        currency: currency ?? this.currency,
        method: method ?? this.method,
        status: status ?? this.status,
        transactionId: transactionId ?? this.transactionId,
        transactionData: transactionData ?? this.transactionData,
        userId: userId ?? this.userId,
        updatedAt: updatedAt ?? this.updatedAt,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['package_id'] = packageId;
    map['amount'] = amount;
    map['currency'] = currency;
    map['method'] = method;
    map['status'] = status;
    map['transaction_id'] = transactionId;
    map['transaction_data'] = transactionData;
    map['user_id'] = userId;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }
}
