import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default([]) List<BiometricType> availableBiometrics,
    @Default(false) bool isFingerPrint,
  }) = _SettingState;
}
