import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/category_api.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<CategoryModel> getCategory();
  Future<AttributesAdsModel> getAttributesForAds({required String subCategory});
}

@LazySingleton(as: CategoryRemoteDataSource)
class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final CategoryApi categoryApi;

  CategoryRemoteDataSourceImpl(this.categoryApi);
  @override
  Future<CategoryModel> getCategory() async => categoryApi.getCategory(page: "1");

  @override
  Future<AttributesAdsModel> getAttributesForAds({required String subCategory}) async {
    return categoryApi.getAttributesForAds(subCategoryId: subCategory);
  }
}
