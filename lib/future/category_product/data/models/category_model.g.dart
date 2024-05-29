// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      data: json['data'] == null
          ? null
          : DataCategoryUpdated.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

DataCategoryUpdated _$DataCategoryUpdatedFromJson(Map<String, dynamic> json) =>
    DataCategoryUpdated(
      category: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataCategoryUpdatedToJson(
        DataCategoryUpdated instance) =>
    <String, dynamic>{
      'data': instance.category,
    };

CategoryDataModel _$CategoryDataModelFromJson(Map<String, dynamic> json) =>
    CategoryDataModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['title'] as String?,
      content: json['content'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$CategoryDataModelToJson(CategoryDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.name,
      'content': instance.content,
      'logo': instance.logo,
    };
