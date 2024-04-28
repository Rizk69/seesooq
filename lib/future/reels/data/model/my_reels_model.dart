import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/reels/data/model/viewers_model.dart';

part 'my_reels_model.g.dart';

//deserializeMyReelsModel
MyReelsModel deserializeMyReelsModel(Map<String, dynamic> json) => _$MyReelsModelFromJson(json);

@JsonSerializable()
class MyReelsModel {
  final String? message;

  @JsonKey(name: 'data')
  final List<MyReels>? myReels;

  MyReelsModel({
    this.message,
    this.myReels,
  });

  factory MyReelsModel.fromJson(Map<String, dynamic> json) => _$MyReelsModelFromJson(json);
  Map<String, dynamic> toJson() => _$MyReelsModelToJson(this);
}

@JsonSerializable()
class MyReels {
  final int? id;
  final String? video;
  @JsonKey(name: 'create_at')
  final String? createAt;

  @JsonKey(name: 'viewers_count')
  final int? viewersCount;

  final List<ViewersModel>? viewers;

  MyReels({
    this.id,
    this.video,
    this.createAt,
    this.viewersCount,
    this.viewers,
  });

  factory MyReels.fromJson(Map<String, dynamic> json) => _$MyReelsFromJson(json);
  Map<String, dynamic> toJson() => _$MyReelsToJson(this);
}
