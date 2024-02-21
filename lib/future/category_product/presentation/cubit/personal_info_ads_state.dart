
class PersonalInfoAdsState {
  String countryCode;
  String countryFlag;

  PersonalInfoAdsState({this.countryCode='+962',this.countryFlag='JO'});

  PersonalInfoAdsState copyWith({
    countryCode,
    countryFlag
  }) {
    return PersonalInfoAdsState(
      countryCode: countryCode ?? this.countryCode,
      countryFlag: countryFlag ?? this.countryFlag,
    );
  }
}