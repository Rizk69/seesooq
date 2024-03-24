// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_ads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandAdsModel _$BrandAdsModelFromJson(Map<String, dynamic> json) =>
    BrandAdsModel(
      result: json['result'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataBrandAds.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BrandAdsModelToJson(BrandAdsModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'data': instance.data,
    };
