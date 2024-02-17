import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/signup/data/models/sign_up_model.dart';

part 'change_password_model.g.dart';

ChangePasswordModel deserializeChangePasswordModel(Map<String, dynamic> json) => ChangePasswordModel.fromJson(json);

@JsonSerializable()
class ChangePasswordModel extends SignUpModel {
  ChangePasswordModel({
    required String result,
    required SignUpModelData data,
  }) : super(result: result, data: data);

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) => _$ChangePasswordModelFromJson(json);
}
