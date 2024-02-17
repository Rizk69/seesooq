import 'package:json_annotation/json_annotation.dart';

part 'social_link_model.g.dart';

@JsonSerializable()
class SocialLinkModel {
  @JsonKey(name: 'icon')
  String? imageUrl;
  String? url;

  SocialLinkModel({
    this.imageUrl,
    this.url,
  });

  factory SocialLinkModel.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocialLinkModelToJson(this);
}
