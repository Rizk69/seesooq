import 'package:json_annotation/json_annotation.dart';

part 'general_statistic_model.g.dart';

GeneralStatisticModel deserializeGeneralStatisticModel(
        Map<String, dynamic> json) =>
    GeneralStatisticModel.fromJson(json);

@JsonSerializable()
class GeneralStatisticModel {
  @JsonKey(name: 'count_account_view')
  String? countAccountView;
  @JsonKey(name: 'count_following')
  int? countFollowing;
  @JsonKey(name: 'count_followers')
  int? countFollowers;
  @JsonKey(name: 'count_account_Ratings')
  int? countAccountRatings;
  @JsonKey(name: 'count_advertisement_numbers')
  int? countAdvertisementNumbers;
  @JsonKey(name: 'count_advertisement_views')
  int? countAdvertisementViews;

  GeneralStatisticModel({
    this.countAccountView,
    this.countFollowing,
    this.countFollowers,
    this.countAccountRatings,
    this.countAdvertisementNumbers,
    this.countAdvertisementViews,
  });

  GeneralStatisticModel.empty();

  factory GeneralStatisticModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralStatisticModelFromJson(json);

  Map<String, dynamic> toJson() => _$GeneralStatisticModelToJson(this);
}
