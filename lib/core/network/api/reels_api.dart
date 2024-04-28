import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/reels/data/model/my_reels_model.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../api/end_point.dart';

part 'reels_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class ReelsApi {
  @factoryMethod
  factory ReelsApi(Dio dio) = _ReelsApi;

  @GET(EndPoint.getReels)
  Future<ReelsModel> getReels();
  @GET(EndPoint.getMyReels)
  Future<MyReelsModel> getMyReels();

  @POST(EndPoint.createReel)
  Future<void> createReel({
    @Body() required dynamic body,
  });
  @GET(EndPoint.deleteReel)
  Future<void> deleteReel({
    @Path() required String id,
  });

  @GET(EndPoint.viewReel)
  Future<void> viewReel({@Path('id') required String id});
}
