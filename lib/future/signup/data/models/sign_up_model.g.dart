// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) => SignUpModel(
      result: json['result'] as String?,
      data: json['data'] == null
          ? null
          : SignUpModelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpModelToJson(SignUpModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
    };

SignUpModelData _$SignUpModelDataFromJson(Map<String, dynamic> json) =>
    SignUpModelData(
      message: json['message'] as String,
      otp: json['otp'],
    );

Map<String, dynamic> _$SignUpModelDataToJson(SignUpModelData instance) =>
    <String, dynamic>{
      'message': instance.message,
      'otp': instance.otp,
    };
