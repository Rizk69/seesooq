// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneBlog _$OneBlogFromJson(Map<String, dynamic> json) => OneBlog(
      json['title'] as String?,
      json['id'] as int?,
      json['brief_description'] as String?,
      json['description'] as String?,
      json['visits'] as int?,
    );

Map<String, dynamic> _$OneBlogToJson(OneBlog instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'brief_description': instance.shortDescription,
      'description': instance.description,
      'visits': instance.visits,
    };
