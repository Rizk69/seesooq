import 'package:json_annotation/json_annotation.dart';

part 'users_story_model.g.dart';

UsersStoryModel deserializeUsersStoryModel(Map<String, dynamic> json) => UsersStoryModel.fromJson(json);
Map<String, dynamic> serializeUsersStoryModel(UsersStoryModel object) => object.toJson();
List<UsersStoryModel> deserializeUsersStoryModelList(List<Map<String, dynamic>> json) => json.map((e) => UsersStoryModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializeUsersStoryModelList(List<UsersStoryModel> objects) => objects.map((e) => e.toJson()).toList();

@JsonSerializable()
class UsersStoryModel {
  UsersStoryModel({
    this.result,
    this.info,
  });

  String? result;

  @JsonKey(name: 'data')
  List<InfoData>? info;

  factory UsersStoryModel.fromJson(Map<String, dynamic> json) => _$UsersStoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$UsersStoryModelToJson(this);

  UsersStoryModel copyWith({
    String? result,
    List<InfoData>? info,
  }) {
    return UsersStoryModel(
      result: result ?? this.result,
      info: info ?? this.info,
    );
  }
}

@JsonSerializable()
class InfoData {
  InfoData({
    this.userId,
    this.image,
    this.name,
    this.stories,
  });
  @JsonKey(name: 'id')
  int? userId;
  String? image;
  String? name;

  List<StoriesData>? stories;

  factory InfoData.fromJson(Map<String, dynamic> json) => _$InfoDataFromJson(json);
  Map<String, dynamic> toJson() => _$InfoDataToJson(this);
  //copyWith

  InfoData copyWith({
    int? userId,
    String? image,
    String? name,
    List<StoriesData>? stories,
  }) {
    return InfoData(
      userId: userId ?? this.userId,
      image: image ?? this.image,
      name: name ?? this.name,
      stories: stories ?? this.stories,
    );
  }
}

@JsonSerializable()
class StoriesData {
  StoriesData({
    this.id,
    this.story,
    this.description,
    this.createdAt,
    this.viewersCount,
    this.viewers,
    this.isViewed = false,
  });

  num? id;
  String? story;
  dynamic description;

  @JsonKey(name: 'created_at')
  String? createdAt;

  bool? isViewed;
  num? viewersCount;
  List<dynamic>? viewers;

  copyWith({
    num? id,
    String? story,
    dynamic description,
    String? createdAt,
    bool? isViewed,
    num? viewersCount,
    List<dynamic>? viewers,
  }) {
    return StoriesData(
      id: id ?? this.id,
      story: story ?? this.story,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      isViewed: isViewed ?? this.isViewed,
      viewersCount: viewersCount ?? this.viewersCount,
      viewers: viewers ?? this.viewers,
    );
  }

  factory StoriesData.fromJson(Map<String, dynamic> json) => _$StoriesDataFromJson(json);
  Map<String, dynamic> toJson() => _$StoriesDataToJson(this);
}
