// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
      body: json['body'] as String?,
      title: json['title'] as String?,
      androidChannelId: json['android_channel_id'] as String?,
      image: json['image'] as String?,
      sound: json['sound'] as bool?,
    );

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'body': instance.body,
      'title': instance.title,
      'android_channel_id': instance.androidChannelId,
      'image': instance.image,
      'sound': instance.sound,
    };
