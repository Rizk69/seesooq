import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/blogs/data/model/blogs.dart';
part 'blog_model.g.dart';
BlogModel deserializeBlogModel(Map<String, dynamic> json) => BlogModel.fromJson(json);

@JsonSerializable()
class BlogModel {
  Blogs? blogs;
  BlogModel(this.blogs);
  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);
  Map<String, dynamic> toJson() => _$BlogModelToJson(this);
}
