import 'package:json_annotation/json_annotation.dart';

part 'Notification.g.dart';

@JsonSerializable()
class Notification {
  Notification({
    this.body,
    this.title,
    this.androidChannelId,
    this.image,
    this.sound,
  });

  String? body;
  String? title;
  @JsonKey(name: 'android_channel_id')
  String? androidChannelId;
  String? image;
  bool? sound;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}
