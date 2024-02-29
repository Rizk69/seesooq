import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/category_api.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<CategoryModel> getCategories();

  Future<CategoryModel> getDetailsCategories({required String categoryId});

  Future<AdvertisementModel> getAdvertisementCategory({required String subCategoryId, required int page});

  Future<AttributesAdsModel> getAttributesByFilter({required String subCategoryId});
}

@LazySingleton(as: CategoryRemoteDataSource)
class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final CategoryApi _api;

  CategoryRemoteDataSourceImpl(this._api);

  @override
  Future<CategoryModel> getCategories() async {
    return await _api.getCategory(page: '1');
  }

  @override
  Future<CategoryModel> getDetailsCategories({required String categoryId}) async {
    // TODO: implement getDetailsCategories
    return await _api.getDetailsCategory(categoryId: categoryId);
  }

  @override
  Future<AdvertisementModel> getAdvertisementCategory({required String subCategoryId, required int page}) {
    return _api.getAdvertisementCategory(subCategoryId: subCategoryId);
  }

  @override
  Future<AttributesAdsModel> getAttributesByFilter({required String subCategoryId}) async {
    return await _api.getAttributesByFilter(
      subCategoryId: subCategoryId,
    );
  }
}
