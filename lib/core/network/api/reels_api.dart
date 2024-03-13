import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
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
  Future<List<ReelsModel>> getReels();
  @GET(EndPoint.getMyReels)
  Future<List<ReelsModel>> getMyReels();
}
