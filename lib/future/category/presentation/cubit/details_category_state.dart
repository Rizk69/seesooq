import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';

part 'details_category_state.freezed.dart';

enum DetailsCategoryStatus { init, loading, success, error }

enum AdvertisemenStatus { initial, loading, loaded, error }

@freezed
class DetailsCategoryState with _$DetailsCategoryState {
  const factory DetailsCategoryState({
    @Default([]) List<CategoryDataModel> detailsCategory,
    @Default(null) AdvertisementModel? advertisementModel,
    @Default(DetailsCategoryStatus.loading) DetailsCategoryStatus detailsCategoryStatus,
    @Default(AdvertisemenStatus.initial) AdvertisemenStatus advertisemenStatus,
    @Default(false) bool loadingMore,
  }) = _DetailsCategoryState;
}
