import 'package:json_annotation/json_annotation.dart';

part 'general_setting_model.g.dart';

GeneralSettingModel deserializeGeneralSettingModel(Map<String, dynamic> json) => GeneralSettingModel.fromJson(json);

@JsonSerializable()
class GeneralSettingModel {
  String? result;
  DataSettingObject? data;

  GeneralSettingModel({
    this.result,
    this.data,
  });

  // empty constructor
  GeneralSettingModel.empty();

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

@JsonSerializable()
class DataSettingObject {
  String? message;
  List<DataOfSetting>? data;

  DataSettingObject({
    this.message,
    this.data,
  });

  factory DataSettingObject.fromJson(Map<String, dynamic> json) => _$DataSettingObjectFromJson(json);
}
