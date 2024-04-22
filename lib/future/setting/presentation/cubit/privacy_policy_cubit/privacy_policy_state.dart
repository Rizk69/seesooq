import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';

part 'privacy_policy_state.freezed.dart';

enum PrivacyPolicyStatus { initial, loading, loaded, error }

@freezed
class PrivacyPolicyState with _$PrivacyPolicyState {
  const factory PrivacyPolicyState({
    @Default(PrivacyPolicyStatus.initial) PrivacyPolicyStatus privacyPolicyStatus,
    @Default(null) GeneralSettingModel? privacyPolicyModel,

  }) = _PrivacyPolicyState;
}
