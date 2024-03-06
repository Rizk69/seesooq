import 'package:json_annotation/json_annotation.dart';
part 'blogs.g.dart';

@JsonSerializable()
class Blogs {
  BlogsData? blogsData;
  Blogs(this.blogsData);
  factory Blogs.fromJson(Map<String, dynamic> json) =>
      _$BlogsFromJson(json);
  Map<String, dynamic> toJson() => _$BlogsToJson(this);
}

@JsonSerializable()
class BlogsData {
  int? id;
  String? title;
  String? shortDescription;
  String? description;
  String? visits;
  BlogsData(this.title,this.id,this.shortDescription,this.description,this.visits);
  factory BlogsData.fromJson(Map<String, dynamic> json) =>
      _$BlogsDataFromJson(json);
  Map<String, dynamic> toJson() => _$BlogsDataToJson(this);
}
