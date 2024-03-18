import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/category_api.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/attributes_form.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';

import '../models/brand_ads_model.dart';

abstract class CategoryRemoteDataSource {
  Future<CategoryModel> getCategory();
  Future<AttributesAdsModel> getAttributesForAds({required String subCategory});
  Future<void> createAdd({required AttributesForm attributesForm});
  Future<BrandAdsModel> getBrands({required String subCategory});
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

  @override
  Future<void> createAdd({required AttributesForm attributesForm}) async {
    FormData formData = FormData.fromMap({
      "category_id": '14',
      "title": attributesForm.title,
      "desc": attributesForm.description,
      "price": attributesForm.price,
      "phone": '786868611',
      "governorate_id": attributesForm.governorateId,
      "city_id": attributesForm.cityId,
      "is_offer": '0',
      "payment_methods[0]": 'installment',
      "contact_methods": '1',
    });

    if (attributesForm.images.isNotEmpty) {
      for (var i = 0; i < attributesForm.images.length; i++) {
        // compress image

        var image = await MultipartFile.fromFile(
          attributesForm.images[i].path,
          filename: attributesForm.images[i].path.split('/').last,
        );
        if (i == 0) {}
        formData.files.add(MapEntry('images[$i]', image));
      }
      if (attributesForm.attributes.isNotEmpty) {
        for (var i = 0; i < attributesForm.attributes.length; i++) {
          formData.fields.add(MapEntry(
              'attributes[${attributesForm.attributes.keys.toList()[i].toString()}]', attributesForm.attributes.values.toList()[i].toString()));
        }
      }
      formData.files.add(MapEntry('main_image', MultipartFile.fromFileSync(attributesForm.images[0].path)));
    }

    return categoryApi.createAdd(body: formData);
  }

  @override
  Future<BrandAdsModel> getBrands({required String subCategory}) {
    return categoryApi.getBrands(subCategoryId: subCategory);
  }


}
