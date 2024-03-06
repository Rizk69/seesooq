import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/blogs/data/model/one_blog/blog.dart';

part 'one_blog_model.g.dart';

OneBlogModel deserializeOneBlogModel(Map<String, dynamic> json) => OneBlogModel.fromJson(json);

@JsonSerializable()
class OneBlogModel {
  OneBlog? blog;
  OneBlogModel(this.blog);
  factory OneBlogModel.fromJson(Map<String, dynamic> json) => _$OneBlogModelFromJson(json);
  Map<String, dynamic> toJson() => _$OneBlogModelToJson(this);
}
