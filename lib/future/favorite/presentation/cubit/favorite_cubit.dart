import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:opensooq/core/utils/loadin_app.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/favorite/data/model/fav_model.dart';
import 'package:opensooq/future/favorite/domain/use_cases/add_fav_usecase.dart';
import 'package:opensooq/future/favorite/domain/use_cases/delete_fav_usecase.dart';
import 'package:opensooq/future/favorite/domain/use_cases/fav_reels_usecase.dart';
import 'package:opensooq/future/favorite/domain/use_cases/fav_usecase.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_state.dart';

import '../../../../core/usecasses/usecasess_shared.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final FavUseCase getFavUseCase = di.sl();
  final FavReelsUseCase getFavReelsUseCase = di.sl();
  final DeleteFavUseCase deleteFavUseCase = di.sl();
  final AddFavUseCase addFavUseCase = di.sl();

  FavoriteCubit() : super(const FavoriteState());

  static FavoriteCubit get(context) => BlocProvider.of(context);

  Future<void> getFav() async {
    loadingWidget();
    final result = await getFavUseCase(NoParams());
    result.fold(
      (error) {
        emit(state.copyWith(status: FavoriteStatus.error));
        showError(error.message.toString());
      },
      (favModel) {
        if (favModel?.data?.isNotEmpty ?? false) {
          emit(state.copyWith(
              status: FavoriteStatus.loaded,
              favoriteList: favModel?.data ?? []));
        } else {
          emit(state.copyWith(status: FavoriteStatus.empty, favoriteList: []));
        }
        dismissLoading();
      },
    );
  }

  Future<void> getReelsFav() async {
    loadingWidget();
    final result = await getFavReelsUseCase(NoParams());
    result.fold(
      (error) {
        emit(state.copyWith(favoriteReelsStatus: FavoriteReelsStatus.error));
        showError(error.message.toString());
      },
      (favModel) {
        if (favModel?.data?.isNotEmpty ?? false) {
          emit(state.copyWith(
              favoriteReelsStatus: FavoriteReelsStatus.loaded,
              favoriteList: favModel?.data ?? []));
        } else {
          emit(state.copyWith(
              favoriteReelsStatus: FavoriteReelsStatus.empty,
              favoriteList: []));
        }
        dismissLoading();
      },
    );
  }

  Future<void> removeFav(
      {required String idFav,
      required int index,
      required bool isOutSide}) async {
    loadingWidget();
    final result = await deleteFavUseCase(idFav);
    result.fold(
      (error) {
        showError(error.message.toString());
      },
      (favModel) {
        EasyLoading.showSuccess('Removed from favorite');
        if (!isOutSide) {
          List<FavData> list = List.from(state.favoriteList);
          list.removeAt(index);
          emit(state.copyWith(
              favoriteList: list, addFavoriteStatus: AddFavoriteStatus.loaded));
        }
        List<FavData> list = List.from(state.favoriteList);
        list.removeWhere((element) => element.adId.toString() == idFav);
        emit(state.copyWith(
            favoriteList: list,
            addFavoriteStatus: AddFavoriteStatus.loaded,
            indexFavoriteView: index));

        dismissLoading();
      },
    );
  }

  Future<void> addFav(
      {required String idFav,
      required FavData favData,
      required int index}) async {
    loadingWidget();
    emit(state.copyWith(addFavoriteStatus: AddFavoriteStatus.loading));
    final result = await addFavUseCase(idFav);
    result.fold(
      (error) {
        showError(error.message.toString());
        emit(state.copyWith(addFavoriteStatus: AddFavoriteStatus.error));
      },
      (favModel) {
        EasyLoading.showSuccess('Added to favorite');
        List<FavData> list = List.from(state.favoriteList);
        list.add(favData);
        emit(state.copyWith(
            favoriteList: list,
            indexFavoriteView: index,
            addFavoriteStatus: AddFavoriteStatus.loaded));

        dismissLoading();
      },
    );
  }

  void changeStatusView(int index) {
    emit(state.copyWith(indexStatusView: index));
  }
}
