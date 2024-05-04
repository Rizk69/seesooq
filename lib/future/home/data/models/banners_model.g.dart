// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannersModel _$BannersModelFromJson(Map<String, dynamic> json) => BannersModel(
      data: json['data'] == null
          ? null
          : BannerData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BannersModelToJson(BannersModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

BannerData _$BannerDataFromJson(Map<String, dynamic> json) => BannerData(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => Banners.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BannerDataToJson(BannerData instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };

Banners _$BannersFromJson(Map<String, dynamic> json) => Banners(
      id: json['id'] as int?,
      link: json['link'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$BannersToJson(Banners instance) => <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'image': instance.image,
      'title': instance.title,
    };
