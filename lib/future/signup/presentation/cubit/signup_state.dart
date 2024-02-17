import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/signup/data/models/sign_up_model.dart';

part 'signup_state.freezed.dart';

enum SignUpStatus { init, loading, success, otp, error, doneOtp, social }

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(null) SignUpModel? signUpModel,
    @Default(SignUpStatus.init) SignUpStatus signUpStatus,
    @Default('') String pinCode,
    @Default({}) Map<String, dynamic> socialData,
    @Default(false) bool hasErrorPinCode,
    @Default(false) bool confirmPrivacyAndTerms,
    @Default('+962') String countryCode,
    @Default('JO') String countryFlag,
  }) = _SignUpState;
}
