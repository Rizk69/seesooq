// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserLocalModelAdapter extends TypeAdapter<UserLocalModel> {
  @override
  final int typeId = 1;

  @override
  UserLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserLocalModel(
      user: fields[0] as UserDataModel?,
      token: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserLocalModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.user)
      ..writeByte(1)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserDataModelAdapter extends TypeAdapter<UserDataModel> {
  @override
  final int typeId = 2;

  @override
  UserDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDataModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      phone: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserDataModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.phone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLocalModel _$UserLocalModelFromJson(Map<String, dynamic> json) =>
    UserLocalModel(
      user: json['user'] == null
          ? null
          : UserDataModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserLocalModelToJson(UserLocalModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) =>
    UserDataModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$UserDataModelToJson(UserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
    };
