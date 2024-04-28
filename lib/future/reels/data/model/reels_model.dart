import 'package:json_annotation/json_annotation.dart';

part 'reels_model.g.dart';

//deserializeReelsModelList
ReelsModel deserializeReelsModel(Map<String, dynamic> json) => _$ReelsModelFromJson(json);
List<ReelsModel> deserializeReelsModelList(List<dynamic> data) =>
    List<ReelsModel>.from(data.map((dynamic item) => ReelsModel.fromJson(item as Map<String, dynamic>)));

@JsonSerializable()
class ReelsModel {
  final int? id;
  @JsonKey(name: 'data')
  final List<UserReels>? userReels;

  ReelsModel({
    this.id,
    this.userReels,
  });

  factory ReelsModel.fromJson(Map<String, dynamic> json) => _$ReelsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReelsModelToJson(this);
}

@JsonSerializable()
class UserReels {
  final int? id;
  final String? image;
  final String? name;

  final List<Reels>? reels;

  UserReels({
    this.id,
    this.image,
    this.name,
    this.reels,
  });

  factory UserReels.fromJson(Map<String, dynamic> json) => _$UserReelsFromJson(json);
  Map<String, dynamic> toJson() => _$UserReelsToJson(this);
}

@JsonSerializable()
class Reels {
  final int? id;
  final String? video;
  @JsonKey(name: 'create_at')
  final String? createAt;

  Reels({
    this.id,
    this.video,
    this.createAt,
  });

  factory Reels.fromJson(Map<String, dynamic> json) => _$ReelsFromJson(json);
  Map<String, dynamic> toJson() => _$ReelsToJson(this);
}
