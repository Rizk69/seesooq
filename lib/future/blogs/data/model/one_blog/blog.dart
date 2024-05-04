import 'package:json_annotation/json_annotation.dart';

part 'blog.g.dart';

@JsonSerializable()
class OneBlog {
  int? id;
  String? title;
  @JsonKey(name: 'brief_description')
  String? shortDescription;
  String? description;
  int? visits;
  OneBlog(this.title, this.id, this.shortDescription, this.description, this.visits);
  factory OneBlog.fromJson(Map<String, dynamic> json) => _$OneBlogFromJson(json);
  Map<String, dynamic> toJson() => _$OneBlogToJson(this);
}
