import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/setting1/data/models/privacy_policy_model.dart';
part 'reasons_for_deletion_model.g.dart';

ReasonsForDeletionModel deserializeReasonsForDeletionModel(Map<String, dynamic> json) =>
    ReasonsForDeletionModel.fromJson(json);

@JsonSerializable()
class ReasonsForDeletionModel {
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

  ReasonsForDeletionModel({
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

  // Factory constructor for creating a new PrivacyPolicyModel instance from a map structure.
  factory ReasonsForDeletionModel.fromJson(Map<String, dynamic> json) =>
      _$ReasonsForDeletionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReasonsForDeletionModelToJson(this);
}
