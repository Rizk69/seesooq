// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      id: json['id'] as int?,
      orderId: json['order_id'],
      customerId: json['customer_id'] as int?,
      sellerId: json['seller_id'],
      title: json['title'] as String?,
      url: json['url'] as String?,
      description: json['description'],
      readStatus: json['read_status'] as int?,
      superAdminReadStatus: json['super_admin_read_status'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['update_at'] == null
          ? null
          : DateTime.parse(json['update_at'] as String),
      order: json['order'],
      userType: json['type_user'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'customer_id': instance.customerId,
      'seller_id': instance.sellerId,
      'title': instance.title,
      'url': instance.url,
      'description': instance.description,
      'read_status': instance.readStatus,
      'super_admin_read_status': instance.superAdminReadStatus,
      'created_at': instance.createdAt?.toIso8601String(),
      'update_at': instance.updatedAt?.toIso8601String(),
      'order': instance.order,
      'type_user': instance.userType,
      'type': instance.type,
    };
