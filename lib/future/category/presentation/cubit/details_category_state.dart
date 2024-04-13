import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';

part 'details_category_state.freezed.dart';

enum DetailsCategoryStatus { init, loading, success, error }

enum AdvertisemenStatus { initial, loading, loaded, error }

enum FilterStatus { initial, loading, loaded, error, empty }

enum ViewData {
  normal,
  filters,
}

@freezed
class DetailsCategoryState with _$DetailsCategoryState {
  const factory DetailsCategoryState({
    @Default([]) List<CategoryDataModel> detailsCategory,
    @Default(null) AdvertisementModel? advertisementModel,
    @Default(null) AdvertisementModel? filterAdvertisementModel,
    @Default(null) AttributesAdsModel? filterData,
    @Default(FilterStatus.initial) FilterStatus? filterStatus,
    @Default(DetailsCategoryStatus.loading) DetailsCategoryStatus detailsCategoryStatus,
    @Default(ViewData.normal) ViewData viewData,
    @Default(AdvertisemenStatus.initial) AdvertisemenStatus advertisemenStatus,
    @Default(RangeValues(0, 10000)) RangeValues rangeValues,
    @Default({}) Map<String, List<String>> idsFilterSelected,
    @Default(false) bool changeRebuild,
    @Default(false) bool loadingMore,
  }) = _DetailsCategoryState;
}
