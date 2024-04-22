import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';

part 'about_us_state.freezed.dart';

enum AboutUsStatus { initial, loading, loaded, error }

@freezed
class AboutUsState with _$AboutUsState {
  const factory AboutUsState({
    @Default(AboutUsStatus.initial) AboutUsStatus aboutUsStatus,
    @Default(null) GeneralSettingModel? aboutUs,

  }) = _AboutUsState;
}
