// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneBlogModel _$OneBlogModelFromJson(Map<String, dynamic> json) => OneBlogModel(
      json['blog'] == null
          ? null
          : OneBlog.fromJson(json['blog'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OneBlogModelToJson(OneBlogModel instance) =>
    <String, dynamic>{
      'blog': instance.blog,
    };
