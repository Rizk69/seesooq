// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_statistic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralStatisticModel _$GeneralStatisticModelFromJson(
        Map<String, dynamic> json) =>
    GeneralStatisticModel(
      countAccountView: json['count_account_view'] as String?,
      countFollowing: (json['count_following'] as num?)?.toInt(),
      countFollowers: (json['count_followers'] as num?)?.toInt(),
      countAccountRatings: (json['count_account_Ratings'] as num?)?.toInt(),
      countAdvertisementNumbers:
          (json['count_advertisement_numbers'] as num?)?.toInt(),
      countAdvertisementViews:
          (json['count_advertisement_views'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GeneralStatisticModelToJson(
        GeneralStatisticModel instance) =>
    <String, dynamic>{
      'count_account_view': instance.countAccountView,
      'count_following': instance.countFollowing,
      'count_followers': instance.countFollowers,
      'count_account_Ratings': instance.countAccountRatings,
      'count_advertisement_numbers': instance.countAdvertisementNumbers,
      'count_advertisement_views': instance.countAdvertisementViews,
    };
