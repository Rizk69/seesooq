import 'package:json_annotation/json_annotation.dart';

part 'edit_user_model.g.dart';

EditUserModel deserializeEditUserModel(Map<String, dynamic> json) => EditUserModel.fromJson(json);

@JsonSerializable()
class EditUserModel {
  UpdateUserData? user;

  EditUserModel(this.user);
  // EditUserModel.fromJson(Map<String,dynamic> json){
  //   name=json['name'];
  //   email=json['email'];
  // }
  factory EditUserModel.fromJson(Map<String, dynamic> json) => _$EditUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$EditUserModelToJson(this);
}

@JsonSerializable()
class UpdateUserData {
  final int ?id;
  final String name;
  final String email;
  final String phone;

  UpdateUserData(this.name, this.email, this.phone, this.id);
  factory UpdateUserData.fromJson(Map<String, dynamic> json) => _$UpdateUserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateUserDataToJson(this);
}
