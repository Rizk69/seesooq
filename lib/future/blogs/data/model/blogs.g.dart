// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blogs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blogs _$BlogsFromJson(Map<String, dynamic> json) => Blogs(
      (json['data'] as List<dynamic>?)
          ?.map((e) => BlogsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BlogsToJson(Blogs instance) => <String, dynamic>{
      'data': instance.blogsData,
    };

BlogsData _$BlogsDataFromJson(Map<String, dynamic> json) => BlogsData(
      json['title'] as String?,
      json['id'] as int?,
      json['shortDescription'] as String?,
      json['description'] as String?,
      json['visits'] as String?,
    );

Map<String, dynamic> _$BlogsDataToJson(BlogsData instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'shortDescription': instance.shortDescription,
      'description': instance.description,
      'visits': instance.visits,
    };
