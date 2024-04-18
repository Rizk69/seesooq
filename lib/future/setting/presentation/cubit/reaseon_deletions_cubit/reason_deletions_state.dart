import 'package:freezed_annotation/freezed_annotation.dart';

part 'reason_deletions_state.freezed.dart';

enum ReasonDeletionsStatus { initial, loading, loaded, error }

@freezed
class ReasonDeletionsState with _$ReasonDeletionsState {
  const factory ReasonDeletionsState({
    @Default(ReasonDeletionsStatus.initial) ReasonDeletionsStatus reasonDeletionsStatus,
  }) = _ReasonDeletionsState;
}
