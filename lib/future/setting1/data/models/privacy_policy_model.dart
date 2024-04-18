import 'package:json_annotation/json_annotation.dart';
part 'privacy_policy_model.g.dart';

PrivacyPolicyModel deserializePrivacyPolicyModel(Map<String, dynamic> json) =>
    PrivacyPolicyModel.fromJson(json);

@JsonSerializable()
class PrivacyPolicyModel {
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
  List<Translations>? translationsReasonsForDeletion;

  PrivacyPolicyModel({
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
    this.translationsReasonsForDeletion});

  factory PrivacyPolicyModel.fromJson(Map<String, dynamic> json) =>
      _$PrivacyPolicyModelFromJson(json);

  Map<String, dynamic> toJson() => _$PrivacyPolicyModelToJson(this);
}

class Translations {
  int? id;
  int? pageId;
  String? locale;
  String? title;
  String? description;
  String? title2;
  String? description2;

  Translations({
    this.id,
    this.pageId,
    this.locale,
    this.title,
    this.description,
    this.title2,
    this.description2});

  Translations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pageId = json['page_id'];
    locale = json['locale'];
    title = json['title'];
    description = json['description'];
    title2 = json['title2'];
    description2 = json['description2'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'page_id': pageId,
      'locale': locale,
      'title': title,
      'description': description,
      'title2': title2,
      'description2': description2,
    };
  }
}
