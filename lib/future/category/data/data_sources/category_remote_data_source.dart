import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/category_api.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category/domain/filter_usecase.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<CategoryModel> getCategories();

  Future<CategoryModel> getDetailsCategories({required String categoryId});

  Future<AdvertisementModel> getAdvertisementCategory({required String subCategoryId, required int page});

  Future<AttributesAdsModel> getAttributesByFilter({required String subCategoryId});

  Future<AdvertisementModel> sendFilter({required FilterParams params});
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
    return _api.getAdvertisementCategory(subCategoryId: subCategoryId, page: page);
  }

  @override
  Future<AttributesAdsModel> getAttributesByFilter({required String subCategoryId}) async {
    return await _api.getAttributesByFilter(
      subCategoryId: subCategoryId,
    );
  }

  @override
  Future<AdvertisementModel> sendFilter({required FilterParams params}) async {
    Map<String, dynamic> formData = {};

    params.filter.map((key, value) {
      if (value is List) {
        for (int i = 0; i < value.length; i++) {
          //formData.addEntries(MapEntry('attributes[$key][$i]', value[i]));
          formData['attributes[$key][${value[i]}]'] = value[i];
        }
      }
      return MapEntry(key, value);
    });
    //..addAll({'fromPrice': fromPrice, 'toPrice': toPrice, 'category_id': subCategoryId})
    //add this without clear previous data
    formData.addAll({'fromPrice': params.fromPrice, 'toPrice': params.toPrice, 'category_id': 14});

    return await _api.sendFilter(
      body: formData,
      page: params.page,
    );
  }
}
