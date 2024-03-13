// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reels_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReelsModel _$ReelsModelFromJson(Map<String, dynamic> json) => ReelsModel(
      id: json['id'] as String?,
      userReels: json['userReels'] == null
          ? null
          : UserReels.fromJson(json['userReels'] as Map<String, dynamic>),
      videoReel: json['videoReel'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ReelsModelToJson(ReelsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userReels': instance.userReels,
      'videoReel': instance.videoReel,
      'description': instance.description,
    };

UserReels _$UserReelsFromJson(Map<String, dynamic> json) => UserReels(
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      userImage: json['userImage'] as String?,
      createAt: json['createAt'] as String?,
    );

Map<String, dynamic> _$UserReelsToJson(UserReels instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userImage': instance.userImage,
      'createAt': instance.createAt,
    };
