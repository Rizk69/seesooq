import 'package:json_annotation/json_annotation.dart';

part 'reels_model.g.dart';

//deserializeReelsModelList
ReelsModel deserializeReelsModel(Map<String, dynamic> json) => _$ReelsModelFromJson(json);
List<ReelsModel> deserializeReelsModelList(List<dynamic> data) =>
    List<ReelsModel>.from(data.map((dynamic item) => ReelsModel.fromJson(item as Map<String, dynamic>)));

@JsonSerializable()
class ReelsModel {
  final String? id;
  final UserReels? userReels;

  final String? videoReel;

  final String? description;

  ReelsModel({
    this.id,
    this.userReels,
    this.videoReel,
    this.description,
  });

  factory ReelsModel.fromJson(Map<String, dynamic> json) => _$ReelsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReelsModelToJson(this);
}

@JsonSerializable()
class UserReels {
  final String? userId;
  final String? userName;
  final String? userImage;
  final String? createAt;

  UserReels({
    this.userId,
    this.userName,
    this.userImage,
    this.createAt,
  });

  factory UserReels.fromJson(Map<String, dynamic> json) => _$UserReelsFromJson(json);
  Map<String, dynamic> toJson() => _$UserReelsToJson(this);
}
