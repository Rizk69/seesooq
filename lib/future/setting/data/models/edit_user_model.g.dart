// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditUserModel _$EditUserModelFromJson(Map<String, dynamic> json) =>
    EditUserModel(
      json['user'] == null
          ? null
          : UpdateUserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EditUserModelToJson(EditUserModel instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

UpdateUserData _$UpdateUserDataFromJson(Map<String, dynamic> json) =>
    UpdateUserData(
      json['name'] as String,
      json['email'] as String,
      json['phone'] as String,
      json['id'] as int?,
    );

Map<String, dynamic> _$UpdateUserDataToJson(UpdateUserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };
