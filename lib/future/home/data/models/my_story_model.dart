import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/home/data/models/users_story_model.dart';

part 'my_story_model.g.dart';

MyStoryModel deserializeMyStoryModel(Map<String, dynamic> json) => MyStoryModel.fromJson(json);
Map<String, dynamic> serializeMyStoryModel(MyStoryModel object) => object.toJson();
List<MyStoryModel> deserializeMyStoryModelList(List<Map<String, dynamic>> json) => json.map((e) => MyStoryModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializeMyStoryModelList(List<MyStoryModel> objects) => objects.map((e) => e.toJson()).toList();

@JsonSerializable()
class MyStoryModel {
  MyStoryModel({
    this.result,
    this.stories,
  });

  String? result;

  @JsonKey(name: 'data')
  List<StoriesData>? stories;

  factory MyStoryModel.fromJson(Map<String, dynamic> json) => _$MyStoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$MyStoryModelToJson(this);

  MyStoryModel copyWith({
    String? result,
    List<StoriesData>? stories,
  }) {
    return MyStoryModel(
      result: result ?? this.result,
      stories: stories ?? this.stories,
    );
  }
}

// @JsonSerializable()
// class Stories {
//   Stories({
//     this.message,
//     this.storiesData,
//   });
//
//   String? message;
//
//   @JsonKey(name: 'data')
//   List<StoriesData>? storiesData;
//
//   factory Stories.fromJson(Map<String, dynamic> json) => _$StoriesFromJson(json);
//   Map<String, dynamic> toJson() => _$StoriesToJson(this);
// }
