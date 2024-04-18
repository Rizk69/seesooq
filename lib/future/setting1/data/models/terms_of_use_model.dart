import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/setting1/data/models/privacy_policy_model.dart';
part 'terms_of_use_model.g.dart';

TermsOfUseModel deserializeTermsOfUseModel(Map<String, dynamic> json) =>
    TermsOfUseModel.fromJson(json);

@JsonSerializable()
class TermsOfUseModel {
  int? id;
  String? slug;
  String? type;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? title;
  String? description;
  String? title2;
  String? description2;
  List<Translations>? translationsTermsOfUseModel;

  TermsOfUseModel({
    this.id,
    this.slug,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.title,
    this.description,
    this.title2,
    this.description2,
    this.translationsTermsOfUseModel});

  factory TermsOfUseModel.fromJson(Map<String, dynamic> json) =>
      _$TermsOfUseModelFromJson(json);

  Map<String, dynamic> toJson() => _$TermsOfUseModelToJson(this);
}