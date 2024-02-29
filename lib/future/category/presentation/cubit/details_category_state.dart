import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';

part 'details_category_state.freezed.dart';

enum DetailsCategoryStatus { init, loading, success, error }

enum AdvertisemenStatus { initial, loading, loaded, error }

enum FilterStatus { initial, loading, loaded, error, empty }

@freezed
class DetailsCategoryState with _$DetailsCategoryState {
  const factory DetailsCategoryState({
    @Default([]) List<CategoryDataModel> detailsCategory,
    @Default(null) AdvertisementModel? advertisementModel,
    @Default(null) AttributesAdsModel? filterData,
    @Default(FilterStatus.initial) FilterStatus? filterStatus,
    @Default(DetailsCategoryStatus.loading) DetailsCategoryStatus detailsCategoryStatus,
    @Default(AdvertisemenStatus.initial) AdvertisemenStatus advertisemenStatus,
    @Default({}) Map<String, List<String>> idsFilterSelected,
    @Default(false) bool changeRebuild,
    @Default(false) bool loadingMore,
  }) = _DetailsCategoryState;
}
