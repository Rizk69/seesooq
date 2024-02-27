import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../future/follow_section/data/model/followers_model.dart';
import '../../api/end_point.dart';
part 'follow_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class FollowApi {
  @factoryMethod
  factory FollowApi(Dio dio) = _FollowApi;

  @GET(EndPoint.getFollowers)
  Future<FollowersModel> getFollowers();
  @GET(EndPoint.getFollowings)
  Future<FollowersModel> getFollowings();

  @GET(EndPoint.makeFollow)
  Future<void> makeFollow({@Path() required int idMF});
  @GET(EndPoint.removeFollower)
  Future<void> removeFollower({@Path() required int idRFR});
  @GET(EndPoint.removeFollowing)
  Future<void> removeFollowing({@Path() required int idRFG});
}
