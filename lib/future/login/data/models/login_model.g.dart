// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      result: json['result'] as String?,
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : UserDataModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'user': instance.user,
    };
