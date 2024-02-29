import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';
import 'package:retrofit/retrofit.dart';

part 'category_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class CategoryApi {
  @factoryMethod
  factory CategoryApi(
    Dio dio,
  ) = _CategoryApi;

  @GET(EndPoint.category)
  Future<CategoryModel> getCategory({
    @Query('page') required String page,
  });
  @POST(EndPoint.getAttributesForAds)
  Future<AttributesAdsModel> getAttributesForAds({
    @Field('category_id') required String subCategoryId,
  });
  @POST(EndPoint.getAttributesByFilter)
  Future<AttributesAdsModel> getAttributesByFilter({
    @Field('category_id') required String subCategoryId,
  });

  @GET(EndPoint.detailsCategory)
  Future<CategoryModel> getDetailsCategory({
    @Path('categoryId') required String categoryId,
  });
  @GET(EndPoint.getAdvertisement)
  Future<AdvertisementModel> getAdvertisementCategory({
    @Path('subCategoryId') required String subCategoryId,
  });

// @POST(EndPoint.markNotificationAsRead)
// Future<NotificationResponseModel> markNotificationAsRead({
//   @Field('id') required String id,
// });
}
