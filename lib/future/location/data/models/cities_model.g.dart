// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CitiesModel _$CitiesModelFromJson(Map<String, dynamic> json) => CitiesModel(
      message: json['message'] as String?,
      citiesData: (json['data'] as List<dynamic>?)
          ?.map((e) => CitiesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CitiesModelToJson(CitiesModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.citiesData,
    };

CitiesData _$CitiesDataFromJson(Map<String, dynamic> json) => CitiesData(
      id: json['id'] as num?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$CitiesDataToJson(CitiesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
