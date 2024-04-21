import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';

part 'terms_of_use_state.freezed.dart';

enum TermsOfUseStatus { initial, loading, loaded, error }

@freezed
class TermsOfUseState with _$TermsOfUseState {
  const factory TermsOfUseState({
    @Default(TermsOfUseStatus.initial) TermsOfUseStatus termsOfUseStatus,
    @Default(null) GeneralSettingModel? termsOfUse,
  }) = _TermsOfUseState;
}
