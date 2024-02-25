import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/favorite/data/model/fav_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../future/myads/data/model/my_ads_model.dart';
import '../../api/end_point.dart';
part 'my_ads_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class MyAdsApi {
  @factoryMethod
  factory MyAdsApi(Dio dio) = _MyAdsApi;

  @GET(EndPoint.getMyAds)
  Future<MyAdsModel> getMyAds();

  @POST(EndPoint.deleteMyAds)
  Future<bool> deleteMyAds({@Body() required int id});


}
