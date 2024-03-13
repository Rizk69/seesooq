// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyAdsModel _$MyAdsModelFromJson(Map<String, dynamic> json) => MyAdsModel(
      advertisementModel:
          json['ads'] == null ? null : AdvertisementModel.fromJson(json['ads']),
    );

Map<String, dynamic> _$MyAdsModelToJson(MyAdsModel instance) =>
    <String, dynamic>{
      'ads': instance.advertisementModel,
    };
