part of 'reels_bloc.dart';

enum ReelsStatus { initial, loading, loaded, error, loadMore }

@freezed
class ReelsState with _$ReelsState {
  const factory ReelsState({
    @Default([]) List<ReelsModel> reels,
    @Default(ReelsStatus.initial) ReelsStatus status,
  }) = _ReelsState;
}
