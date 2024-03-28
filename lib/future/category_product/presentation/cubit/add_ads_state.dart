import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/attributes_form.dart';

import '../../data/models/brand_ads_model.dart';

part 'add_ads_state.freezed.dart';

enum AttributesAdsStatus { initial, loading, loaded, error }

enum StatusBrand { initial, loading, loaded, error }

enum CreateAdsStatus { initial, success, error }

@freezed
class AddAdsState with _$AddAdsState {
  const factory AddAdsState({
    @Default(AttributesAdsStatus.initial) AttributesAdsStatus attributesAdsStatus,
    @Default(StatusBrand.initial) StatusBrand statusBrand,
    @Default(null) AttributesAdsModel? attributesAdsModel,
    @Default(null) BrandAdsModel? brandAdsModel,
    @Default('') String selectedSubCategory,
    @Default('') String selectedSubCategoryBrands,
    @Default('') String city,
    @Default('') String governorate,
    @Default(CreateAdsStatus.initial) CreateAdsStatus createAdsStatus,
    @Default(false) bool isOffer,
    @Default(0.0) num price,
    @Default([]) List<ImageFile> images,
    @Default(AttributesForm()) AttributesForm attributesForm,
    @Default(false) bool loadingMore,
  }) = _AddAdsState;
}
