import 'connect_with_us_cubit.dart';

class ConnectWithUsState {
  String countryCode;
  String countryFlag;

  ConnectWithUsState({this.countryCode='+962',this.countryFlag='JO'});

  ConnectWithUsState copyWith({
    countryCode,
    countryFlag
  }) {
    return ConnectWithUsState(
      countryCode: countryCode ?? this.countryCode,
      countryFlag: countryFlag ?? this.countryFlag,
    );
  }
}