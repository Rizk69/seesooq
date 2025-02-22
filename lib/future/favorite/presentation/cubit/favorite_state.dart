import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/favorite/data/model/fav_model.dart';
import 'package:opensooq/future/favorite/data/model/fav_reels_model.dart';

part 'favorite_state.freezed.dart';

enum FavoriteStatus { initial, loading, loaded, error, empty }

enum FavoriteReelsStatus { initial, loading, loaded, error, empty }

enum AddFavoriteStatus { initial, loading, loaded, error, empty }

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(FavoriteStatus.initial) FavoriteStatus status,
    @Default(FavoriteReelsStatus.initial) FavoriteReelsStatus favoriteReelsStatus,
    @Default(AddFavoriteStatus.initial) AddFavoriteStatus addFavoriteStatus,
    @Default([]) List<FavData> favoriteList,
    @Default(null) FavReelsModel? favReelsModel,
    @Default(0) int indexFavoriteView,
    @Default(0) int indexStatusView,
  }) = _FavoriteState;
}
