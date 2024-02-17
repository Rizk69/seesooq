//{
//     "result": "success",
//     "token": "9|tI6jGTCj3b8iL8jawlzLKajgdhIw8zgQTedRIG8Qbdf336a2"
// }
import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/user_local_model.dart';

part 'login_model.g.dart';

LoginModel deserializeLoginModel(Map<String, dynamic> json) => LoginModel.fromJson(json);
Map<String, dynamic> serializeLoginModel(LoginModel object) => object.toJson();
List<LoginModel> deserializeLoginModelList(List<Map<String, dynamic>> json) => json.map((e) => LoginModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializeLoginModelList(List<LoginModel> objects) => objects.map((e) => e.toJson()).toList();

@JsonSerializable()
class LoginModel {
  String? result;
  String? token;

  UserDataModel? user;

  LoginModel({
    this.result,
    this.token,
    this.user,
  });
  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
