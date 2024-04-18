import 'package:json_annotation/json_annotation.dart';

part 'general_setting_model.g.dart';

GeneralSettingModel deserializeGeneralSettingModel(Map<String, dynamic> json) => GeneralSettingModel.fromJson(json);

@JsonSerializable()
class GeneralSettingModel {
  String? slug;
  String? type;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  List<DataOfSetting>? data;

  GeneralSettingModel({
    this.slug,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory GeneralSettingModel.fromJson(Map<String, dynamic> json) => _$GeneralSettingModelFromJson(json);

  Map<String, dynamic> toJson() => _$GeneralSettingModelToJson(this);
}

@JsonSerializable()
class DataOfSetting {
  int? id;
  String? title;
  String? description;

  DataOfSetting({
    this.id,
    this.title,
    this.description,
  });

  factory DataOfSetting.fromJson(Map<String, dynamic> json) => _$DataOfSettingFromJson(json);
}
