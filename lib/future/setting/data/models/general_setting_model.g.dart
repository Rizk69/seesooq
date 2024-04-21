// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralSettingModel _$GeneralSettingModelFromJson(Map<String, dynamic> json) =>
    GeneralSettingModel(
      result: json['result'] as String?,
      data: json['data'] == null
          ? null
          : DataSettingObject.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeneralSettingModelToJson(
        GeneralSettingModel instance) =>
    <String, dynamic>{
      'result': instance.result,
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

DataSettingObject _$DataSettingObjectFromJson(Map<String, dynamic> json) =>
    DataSettingObject(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataOfSetting.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataSettingObjectToJson(DataSettingObject instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
