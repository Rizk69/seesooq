// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForGetPasswordModel _$ForGetPasswordModelFromJson(Map<String, dynamic> json) =>
    ForGetPasswordModel(
      result: json['result'] as String,
      data: SignUpModelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForGetPasswordModelToJson(
        ForGetPasswordModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
    };
