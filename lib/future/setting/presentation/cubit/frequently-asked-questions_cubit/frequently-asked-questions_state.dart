import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';

part 'frequently-asked-questions_state.freezed.dart';

enum FrequentlyAskedStatus { initial, loading, loaded, error }

@freezed
class FrequentlyAskedState with _$FrequentlyAskedState {
  const factory FrequentlyAskedState({
    @Default(FrequentlyAskedStatus.initial) FrequentlyAskedStatus frequentlyAskedStatus,
    @Default(null) GeneralSettingModel? frequentlyAskedModel,
  }) = _FrequentlyAskedState;
}
