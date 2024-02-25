import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/login/data/models/login_model.dart';

part 'login_state.freezed.dart';

enum LoginStatus {
  init,
  loading,
  success,
  error,
  unAuthorized,
}

enum ForGetPasswordStatus {
  init,
  otpMode,
  otpSuccess,
  otpError,
  changedPassword,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(null) LoginModel? loginModel,
    @Default('') String otpCode,
    @Default('') String responseOtpCode,
    @Default('') String recoveryEmail,
    @Default(false) bool isHome,
    @Default(false) bool hasErrorPinCode,
    @Default(true) bool togglePassword,
    @Default(true) bool toggleUnlockPassword,
    @Default(LoginStatus.init) LoginStatus loginStatus,
    @Default(ForGetPasswordStatus.init) ForGetPasswordStatus forGetPasswordStatus,
  }) = _LoginState;
}
