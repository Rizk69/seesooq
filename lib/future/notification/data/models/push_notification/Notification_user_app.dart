import 'package:json_annotation/json_annotation.dart';

import 'Notification.dart';

part 'Notification_user_app.g.dart';

@JsonSerializable()
class NotificationUserApp {
  NotificationUserApp({
    this.registrationIds,
    this.notification,
  });
  List<String>? registrationIds;
  Notification? notification;
  factory NotificationUserApp.fromJson(Map<String, dynamic> json) =>
      _$NotificationUserAppFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationUserAppToJson(this);
}
