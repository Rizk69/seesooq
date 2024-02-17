// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Notification_user_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationUserApp _$NotificationUserAppFromJson(Map<String, dynamic> json) =>
    NotificationUserApp(
      registrationIds: (json['registrationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      notification: json['notification'] == null
          ? null
          : Notification.fromJson(json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationUserAppToJson(
        NotificationUserApp instance) =>
    <String, dynamic>{
      'registrationIds': instance.registrationIds,
      'notification': instance.notification,
    };
