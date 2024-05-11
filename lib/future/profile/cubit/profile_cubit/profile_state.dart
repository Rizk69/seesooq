import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/setting/data/models/general_statistic_model.dart';

part 'profile_state.freezed.dart';

enum ProfileStatus { initial, loading, loaded, error }

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.initial) ProfileStatus profileStatus,
    @Default(null) GeneralStatisticModel? statisticModel,

  }) = _ProfileState;
}
