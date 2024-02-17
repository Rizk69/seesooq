import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

CategoryModel deserializeCategoryModel(Map<String, dynamic> json) => CategoryModel.fromJson(json);
Map<String, dynamic> serializeCategoryModel(CategoryModel object) => object.toJson();
List<CategoryModel> deserializeCategoryModelList(List<Map<String, dynamic>> json) => json.map((e) => CategoryModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializeCategoryModelList(List<CategoryModel> objects) => objects.map((e) => e.toJson()).toList();

@JsonSerializable()
class CategoryModel {
  CategoryModel({
    this.data,
  });
  @JsonKey(name: 'data')
  DataCategoryUpdated? data;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

@JsonSerializable()
class DataCategoryUpdated {
  DataCategoryUpdated({
    this.category,
  });
  @JsonKey(name: 'data')
  List<CategoryDataModel>? category;

  factory DataCategoryUpdated.fromJson(Map<String, dynamic> json) => _$DataCategoryUpdatedFromJson(json);
  Map<String, dynamic> toJson() => _$DataCategoryUpdatedToJson(this);
}

@JsonSerializable()
class CategoryDataModel {
  CategoryDataModel({
    this.id,
    this.name,
    this.content,
    this.logo,
  });

  int? id;
  @JsonKey(name: 'title')
  String? name;
  String? content;
  String? logo;
  factory CategoryDataModel.fromJson(Map<String, dynamic> json) => _$CategoryDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryDataModelToJson(this);
}
