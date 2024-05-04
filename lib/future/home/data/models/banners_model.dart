import 'package:json_annotation/json_annotation.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';

part 'banners_model.g.dart';

BannersModel deserializeBannersModel(Map<String, dynamic> json) => BannersModel.fromJson(json);
Map<String, dynamic> serializeBannersModel(BannersModel object) => object.toJson();

@JsonSerializable()
class BannersModel {
  BannersModel({
    this.data,
  });
  @JsonKey(name: 'data')
  BannerData? data;

  factory BannersModel.fromJson(Map<String, dynamic> json) => _$BannersModelFromJson(json);
  Map<String, dynamic> toJson() => _$BannersModelToJson(this);
}

@JsonSerializable()
class BannerData {
  final List<Banners>? banners;
  BannerData({this.banners});
  factory BannerData.fromJson(Map<String, dynamic> json) => _$BannerDataFromJson(json);
  Map<String, dynamic> toJson() => _$BannerDataToJson(this);
}

@JsonSerializable()
class Banners {
  final int? id;
  final String? link;
  final String? image;
  final String? title;

  Banners({this.id, this.link, this.image, this.title});

  factory Banners.fromJson(Map<String, dynamic> json) => _$BannersFromJson(json);
  Map<String, dynamic> toJson() => _$BannersToJson(this);
}
