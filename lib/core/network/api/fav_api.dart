import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/favorite/data/model/fav_model.dart';
import 'package:opensooq/future/favorite/data/model/fav_reels_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../api/end_point.dart';

part 'fav_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class FavApi {
  @factoryMethod
  factory FavApi(Dio dio) = _FavApi;

  @GET(EndPoint.getFav)
  Future<FavModel> getFav();
  @GET(EndPoint.getReelsFav)
  Future<FavReelsModel> getReelsFav();
  @GET(EndPoint.removeFav)
  Future<String> removeFav({@Path() required String id});
  @DELETE(EndPoint.removeFavReel)
  Future<String> removeFavReel({@Path() required String id});

  @GET(EndPoint.addFav)
  Future<String> sendFav({@Path() required String id});
}
