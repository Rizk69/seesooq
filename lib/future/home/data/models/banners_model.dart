import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
part 'banners_model.g.dart';

BannersModel deserializeBannersModel(Map<String, dynamic> json) =>
    BannersModel.fromJson(json);
Map<String, dynamic> serializeBannersModel(BannersModel object) =>
    object.toJson();

@JsonSerializable()
class BannersModel {
  BannersModel({
    this.data,
  });
  @JsonKey(name: 'data')
  List<Data>? data;

  factory BannersModel.fromJson(Map<String, dynamic> json) =>
      _$BannersModelFromJson(json);
  Map<String, dynamic> toJson() => _$BannersModelToJson(this);

  BannersModel copyWith({List<Data>? data}) {
    return BannersModel(
      data: data ?? this.data,
    );
  }
}
