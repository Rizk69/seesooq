// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reels_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReelsModel _$ReelsModelFromJson(Map<String, dynamic> json) => ReelsModel(
      id: (json['id'] as num?)?.toInt(),
      userReels: (json['data'] as List<dynamic>?)
          ?.map((e) => UserReels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReelsModelToJson(ReelsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.userReels,
    };

UserReels _$UserReelsFromJson(Map<String, dynamic> json) => UserReels(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      reels: (json['reels'] as List<dynamic>?)
          ?.map((e) => Reels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserReelsToJson(UserReels instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'reels': instance.reels,
    };

Reels _$ReelsFromJson(Map<String, dynamic> json) => Reels(
      id: (json['id'] as num?)?.toInt(),
      video: json['video'] as String?,
      createAt: json['create_at'] as String?,
      isFav: (json['is_favourite'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReelsToJson(Reels instance) => <String, dynamic>{
      'id': instance.id,
      'video': instance.video,
      'create_at': instance.createAt,
      'is_favourite': instance.isFav,
    };
