// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersStoryModel _$UsersStoryModelFromJson(Map<String, dynamic> json) =>
    UsersStoryModel(
      result: json['result'] as String?,
      info: (json['data'] as List<dynamic>?)
          ?.map((e) => InfoData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsersStoryModelToJson(UsersStoryModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.info,
    };

InfoData _$InfoDataFromJson(Map<String, dynamic> json) => InfoData(
      userId: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      stories: (json['stories'] as List<dynamic>?)
          ?.map((e) => StoriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InfoDataToJson(InfoData instance) => <String, dynamic>{
      'id': instance.userId,
      'image': instance.image,
      'name': instance.name,
      'stories': instance.stories,
    };

StoriesData _$StoriesDataFromJson(Map<String, dynamic> json) => StoriesData(
      id: json['id'] as num?,
      story: json['story'] as String?,
      description: json['description'],
      createdAt: json['created_at'] as String?,
      viewersCount: json['viewersCount'] as num?,
      viewers: json['viewers'] as List<dynamic>?,
      isViewed: json['isViewed'] as bool? ?? false,
    );

Map<String, dynamic> _$StoriesDataToJson(StoriesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'story': instance.story,
      'description': instance.description,
      'created_at': instance.createdAt,
      'isViewed': instance.isViewed,
      'viewersCount': instance.viewersCount,
      'viewers': instance.viewers,
    };
