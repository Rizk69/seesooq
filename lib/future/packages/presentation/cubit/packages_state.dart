import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/packages/data/models/packages_model.dart';

part 'packages_state.freezed.dart';

enum PackagesStatus { initial, loading, loaded, error }

enum SegmentButtonState { day, month }

@freezed
class PackagesState with _$PackagesState {
  const factory PackagesState({
    @Default(null) PackagesModel? packagesModel,
    @Default(PackagesStatus.initial) PackagesStatus status,
    @Default(SegmentButtonState.day) SegmentButtonState segmentButtonState,
  }) = _PackagesState;
}
