import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/favorite/data/model/fav_model.dart';
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

  @POST(EndPoint.getFav)
  Future<bool> sendFav({@Body() required int id});


}
