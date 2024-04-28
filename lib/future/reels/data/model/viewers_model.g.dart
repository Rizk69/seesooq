// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewersModel _$ViewersModelFromJson(Map<String, dynamic> json) => ViewersModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ViewersModelToJson(ViewersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'image': instance.image,
    };
