// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_reels_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyReelsModel _$MyReelsModelFromJson(Map<String, dynamic> json) => MyReelsModel(
      message: json['message'] as String?,
      myReels: (json['data'] as List<dynamic>?)
          ?.map((e) => MyReels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyReelsModelToJson(MyReelsModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.myReels,
    };

MyReels _$MyReelsFromJson(Map<String, dynamic> json) => MyReels(
      id: (json['id'] as num?)?.toInt(),
      video: json['video'] as String?,
      createAt: json['create_at'] as String?,
      viewersCount: (json['viewers_count'] as num?)?.toInt(),
      viewers: (json['viewers'] as List<dynamic>?)
          ?.map((e) => ViewersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyReelsToJson(MyReels instance) => <String, dynamic>{
      'id': instance.id,
      'video': instance.video,
      'create_at': instance.createAt,
      'viewers_count': instance.viewersCount,
      'viewers': instance.viewers,
    };
