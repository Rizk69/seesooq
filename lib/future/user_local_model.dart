import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_local_model.g.dart';

UserLocalModel deserializeUserLocalModel(Map<String, dynamic> json) => UserLocalModel.fromJson(json);

Map<String, dynamic> serializeUserLocalModel(UserLocalModel object) => object.toJson();

@JsonSerializable()
@HiveType(typeId: 1)
class UserLocalModel extends HiveObject {
  UserLocalModel({
    this.user,
    this.token,
  });
  @HiveField(0)
  UserDataModel? user;
  @HiveField(1)
  String? token;

  factory UserLocalModel.fromJson(Map<String, dynamic> json) => _$UserLocalModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserLocalModelToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 2)
class UserDataModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? phone;

  UserDataModel({
    this.id,
    this.name,
    this.phone,
  });
  // create copywith
  UserDataModel copyWith({
    int? id,
    String? name,
    String? phone,
  }) {
    return UserDataModel(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
    );
  }

  factory UserDataModel.fromJson(Map<String, dynamic> json) => _$UserDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataModelToJson(this);
}
