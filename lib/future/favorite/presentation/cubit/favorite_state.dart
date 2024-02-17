import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

enum FavoriteStatus { initial, loading, loaded, error }

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(FavoriteStatus.initial) FavoriteStatus status,
    @Default(0) int indexStatusView,
  }) = _FavoriteState;
}
