import 'package:json_annotation/json_annotation.dart';

part 'links.g.dart';

Links deserializeLinks(Map<String, dynamic> json) => Links.fromJson(json);
Map<String, dynamic> serializeLinks(Links object) => object.toJson();
List<Links> deserializeLinksList(List<Map<String, dynamic>> json) =>
    json.map((e) => Links.fromJson(e)).toList();
List<Map<String, dynamic>> serializeLinksList(List<Links> objects) =>
    objects.map((e) => e.toJson()).toList();

@JsonSerializable()
class Links {
  Links({
    this.url,
    this.label,
    this.active,
  });

  dynamic url;
  String? label;
  bool? active;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
