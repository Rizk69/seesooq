import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';

part 'reason_deletions_state.freezed.dart';

enum ReasonDeletionsStatus { initial, loading, loaded, error }

enum DeleteAccountStatus { initial, loading, success, error }

@freezed
class ReasonDeletionsState with _$ReasonDeletionsState {
  const factory ReasonDeletionsState({
    @Default(ReasonDeletionsStatus.initial) ReasonDeletionsStatus reasonDeletionsStatus,
    @Default(DeleteAccountStatus.initial) DeleteAccountStatus deleteAccountStatus,
    GeneralSettingModel? reasonDeletionsModel,
    int? selectedReason,
  }) = _ReasonDeletionsState;
}
