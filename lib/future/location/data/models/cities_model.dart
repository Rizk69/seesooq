import 'package:json_annotation/json_annotation.dart';

part 'cities_model.g.dart';

CitiesModel deserializeCitiesModel(Map<String, dynamic> json) => CitiesModel.fromJson(json);
Map<String, dynamic> serializeCitiesModel(CitiesModel object) => object.toJson();
List<CitiesModel> deserializeCitiesModelList(List<Map<String, dynamic>> json) => json.map((e) => CitiesModel.fromJson(e)).toList();
List<Map<String, dynamic>> serializeCitiesModelList(List<CitiesModel> objects) => objects.map((e) => e.toJson()).toList();

@JsonSerializable()
class CitiesModel {
  CitiesModel({
    this.message,
    this.citiesData,
  });

  String? message;

  @JsonKey(name: 'data')
  List<CitiesData>? citiesData;

  factory CitiesModel.fromJson(Map<String, dynamic> json) => _$CitiesModelFromJson(json['data']);
  Map<String, dynamic> toJson() => _$CitiesModelToJson(this);
}

@JsonSerializable()
class CitiesData {
  CitiesData({
    this.id,
    this.title,
  });

  num? id;
  String? title;

  factory CitiesData.fromJson(Map<String, dynamic> json) => _$CitiesDataFromJson(json);
  Map<String, dynamic> toJson() => _$CitiesDataToJson(this);
}
