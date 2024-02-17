import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';

part 'category_product_state.freezed.dart';

enum CategoryProductStatus { initial, loading, loaded, error }

enum AttributesAdsStatus { initial, loading, loaded, error }

@freezed
class CategoryProductState with _$CategoryProductState {
  const factory CategoryProductState({
    @Default([]) List<CategoryDataModel> categoryProduct,
    @Default(CategoryProductStatus.initial) CategoryProductStatus categoryProductStatus,
    @Default(AttributesAdsStatus.initial) AttributesAdsStatus attributesAdsStatus,
    @Default(null) AttributesAdsModel? attributesAdsModel,
    @Default('') String selectedSubCategory,
    @Default([]) List<XFile?> images,
    @Default(false) bool loadingMore,
  }) = _CategoryProductState;
}
