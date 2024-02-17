import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/location/data/models/Place_text_model.dart';
import 'package:opensooq/future/location/data/models/cities_model.dart';
import 'package:retrofit/retrofit.dart';

part 'location_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class LocationApi {
  @factoryMethod
  factory LocationApi(
    Dio dio,
  ) = _LocationApi;

  @GET(EndPoint.searchPlaces)
  Future<PlaceTextModel> getPlaces({
    @Query('key') required String key,
    @Query('query') required String query,
    @Query('language') required String language,
  });
  @GET(EndPoint.getCities)
  Future<CitiesModel> getCities({
    @Path('id') required int id,
  });
  @GET(EndPoint.getGovernorate)
  Future<CitiesModel> getGovernorate();

// @POST(EndPoint.markNotificationAsRead)
// Future<NotificationResponseModel> markNotificationAsRead({
//   @Field('id') required String id,
// });
}
