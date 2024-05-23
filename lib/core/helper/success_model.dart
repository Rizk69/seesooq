import 'package:json_annotation/json_annotation.dart';

part 'success_model.g.dart';

SuccessModel deserializeSuccessModel(Map<String, dynamic> json) => SuccessModel.fromJson(json);

@JsonSerializable()
class SuccessModel {
  SuccessModel({
    this.success,
  });

  final String? success;

  factory SuccessModel.fromJson(Map<String, dynamic> json) => _$SuccessModelFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessModelToJson(this);
}
