// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyStoryModel _$MyStoryModelFromJson(Map<String, dynamic> json) => MyStoryModel(
      result: json['result'] as String?,
      stories: (json['data'] as List<dynamic>?)
          ?.map((e) => StoriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyStoryModelToJson(MyStoryModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.stories,
    };
