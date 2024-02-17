import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/attributes_form.dart';

part 'add_ads_state.freezed.dart';

enum AttributesAdsStatus { initial, loading, loaded, error }

@freezed
class AddAdsState with _$AddAdsState {
  const factory AddAdsState({
    @Default(AttributesAdsStatus.initial) AttributesAdsStatus attributesAdsStatus,
    @Default(null) AttributesAdsModel? attributesAdsModel,
    @Default('') String selectedSubCategory,
    @Default([]) List<ImageFile> images,
    @Default(AttributesForm()) AttributesForm attributesForm,
    @Default(false) bool loadingMore,
  }) = _AddAdsState;
}
