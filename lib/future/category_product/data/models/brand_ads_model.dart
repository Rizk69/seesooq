import 'package:json_annotation/json_annotation.dart';

part 'brand_ads_model.g.dart';
BrandAdsModel deserializeBrandAdsModel(Map<String, dynamic> json) => BrandAdsModel.fromJson(json);

@JsonSerializable()
class BrandAdsModel {
  String? result;
  String? message;
  List<DataBrandAds>? data;

  BrandAdsModel({this.result, this.message, this.data});

  BrandAdsModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    message = json['message'];
    if (json['data'] != null) {
      data = <DataBrandAds>[];
      json['data'].forEach((v) {
        data!.add(new DataBrandAds.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataBrandAds {
  int? id;
  String? title;
  String? logo;

  DataBrandAds({this.id, this.title, this.logo});

  DataBrandAds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['logo'] = this.logo;
    return data;
  }
}
