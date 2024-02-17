import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/signup/data/models/sign_up_model.dart';

part 'forget_password_model.g.dart';

ForGetPasswordModel deserializeForGetPasswordModel(Map<String, dynamic> json) => ForGetPasswordModel.fromJson(json);

@JsonSerializable()
class ForGetPasswordModel extends SignUpModel {
  ForGetPasswordModel({
    required String result,
    required SignUpModelData data,
  }) : super(result: result, data: data);

  factory ForGetPasswordModel.fromJson(Map<String, dynamic> json) => _$ForGetPasswordModelFromJson(json);
}
