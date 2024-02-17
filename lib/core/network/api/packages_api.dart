import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/packages/data/models/packages_model.dart';
import 'package:retrofit/retrofit.dart';

part 'packages_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class PackagesApi {
  @factoryMethod
  factory PackagesApi(
    Dio dio,
  ) = _PackagesApi;

  @GET(EndPoint.getPackagesM)
  Future<PackagesModel> getPackages();
}
