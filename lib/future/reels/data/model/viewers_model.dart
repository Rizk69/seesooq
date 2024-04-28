import 'package:json_annotation/json_annotation.dart';

part 'viewers_model.g.dart';

@JsonSerializable()
class ViewersModel {
  final int? id;
  final String? name;
  final String? phone;
  final String? email;
  final String? image;

  ViewersModel({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.image,
  });

  factory ViewersModel.fromJson(Map<String, dynamic> json) => _$ViewersModelFromJson(json);
  Map<String, dynamic> toJson() => _$ViewersModelToJson(this);
}
