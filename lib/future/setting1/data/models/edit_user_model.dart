import 'package:json_annotation/json_annotation.dart';
part 'edit_user_model.g.dart';
EditUserModel deserializeEditUserModel(Map<String, dynamic> json) => EditUserModel.fromJson(json);

@JsonSerializable()
class EditUserModel{
  String? name;
  String? email;
  EditUserModel(this.name,this.email);
  // EditUserModel.fromJson(Map<String,dynamic> json){
  //   name=json['name'];
  //   email=json['email'];
  // }
  factory EditUserModel.fromJson(Map<String, dynamic> json) => _$EditUserModelFromJson(json['data']);
  Map<String, dynamic> toJson() => _$EditUserModelToJson(this);

}