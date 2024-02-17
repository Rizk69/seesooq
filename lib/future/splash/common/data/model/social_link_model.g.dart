// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_link_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialLinkModel _$SocialLinkModelFromJson(Map<String, dynamic> json) =>
    SocialLinkModel(
      imageUrl: json['icon'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$SocialLinkModelToJson(SocialLinkModel instance) =>
    <String, dynamic>{
      'icon': instance.imageUrl,
      'url': instance.url,
    };
