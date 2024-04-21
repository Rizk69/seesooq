import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';

part 'reason_deletions_state.freezed.dart';

enum ReasonDeletionsStatus { initial, loading, loaded, error }
@freezed
class ReasonDeletionsState with _$ReasonDeletionsState {
  const factory ReasonDeletionsState({
    @Default(ReasonDeletionsStatus.initial) ReasonDeletionsStatus reasonDeletionsStatus,
    GeneralSettingModel? reasonDeletionsModel,
    int? selectedReason,
  }) = _ReasonDeletionsState;
}
