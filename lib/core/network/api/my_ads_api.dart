import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/helper/success_model.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../api/end_point.dart';

part 'my_ads_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class MyAdsApi {
  @factoryMethod
  factory MyAdsApi(Dio dio) = _MyAdsApi;

  @POST(EndPoint.getMyAds)
  Future<MyAdsModel> getMyAds({
    @Field('type') required String type,
    @Query('page') int? page,
    // TODO: all,active,inactive,pending,accepted
  });

  @DELETE(EndPoint.deleteMyAds)
  Future<SuccessModel> deleteMyAds({@Path('id') required int id});
}
