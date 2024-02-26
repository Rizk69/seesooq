import 'package:json_annotation/json_annotation.dart';
part 'my_ads_model.g.dart';

MyAdsModel deserializeMyAdsModel(Map<String, dynamic> json) =>
    MyAdsModel.fromJson(json);

@JsonSerializable()
class MyAdsModel {
  String? name;
  String? email;
  MyAdsModel(this.name, this.email);
  // EditUserModel.fromJson(Map<String,dynamic> json){
  //   name=json['name'];
  //   email=json['email'];
  // }
  factory MyAdsModel.fromJson(Map<String, dynamic> json) =>
      _$MyAdsModelFromJson(json['data']);
  Map<String, dynamic> toJson() => _$MyAdsModelToJson(this);
}
