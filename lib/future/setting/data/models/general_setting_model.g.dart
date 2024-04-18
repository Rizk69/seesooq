// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralSettingModel _$GeneralSettingModelFromJson(Map<String, dynamic> json) =>
    GeneralSettingModel(
      slug: json['slug'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
    )..data = (json['data'] as List<dynamic>?)
        ?.map((e) => DataOfSetting.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$GeneralSettingModelToJson(
        GeneralSettingModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'data': instance.data,
    };

DataOfSetting _$DataOfSettingFromJson(Map<String, dynamic> json) =>
    DataOfSetting(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DataOfSettingToJson(DataOfSetting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };
