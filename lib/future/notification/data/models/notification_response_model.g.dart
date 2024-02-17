// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationResponseModel _$NotificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    NotificationResponseModel(
      notifications: _$JsonConverterFromJson<Map<String, dynamic>,
              List<NotificationModel>?>(
          json['notifications'], const NotificationDataConverter().fromJson),
    );

Map<String, dynamic> _$NotificationResponseModelToJson(
        NotificationResponseModel instance) =>
    <String, dynamic>{
      'notifications':
          const NotificationDataConverter().toJson(instance.notifications),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
