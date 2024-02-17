// ignore: file_names
import 'package:json_annotation/json_annotation.dart';

import 'notification_model.dart';

part 'notification_response_model.g.dart';

NotificationResponseModel deserializeNotificationResponseModel(
        Map<String, dynamic> json) =>
    NotificationResponseModel.fromJson(json);
Map<String, dynamic> serializeNotificationResponseModel(
        NotificationResponseModel object) =>
    object.toJson();
List<NotificationResponseModel> deserializeNotificationResponseModelList(
        List<Map<String, dynamic>> json) =>
    json.map((e) => NotificationResponseModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializeNotificationResponseModelList(
        List<NotificationResponseModel> objects) =>
    objects.map((e) => e.toJson()).toList();

class NotificationDataConverter
    implements JsonConverter<List<NotificationModel>?, Map<String, dynamic>> {
  const NotificationDataConverter();

  @override
  List<NotificationModel>? fromJson(Map<String, dynamic> json) =>
      json['data'] == null
          ? null
          : deserializeNotificationModelList(
              json['data'].cast<Map<String, dynamic>>());

  @override
  Map<String, dynamic> toJson(List<NotificationModel>? objects) => {
        'data': objects == null ? null : serializeNotificationModelList(objects)
      };
}

@JsonSerializable(converters: [NotificationDataConverter()])
class NotificationResponseModel {
  NotificationResponseModel({
    this.notifications,
  });

  List<NotificationModel>? notifications;

  factory NotificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationResponseModelToJson(this);
}
