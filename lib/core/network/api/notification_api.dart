import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/notification/data/models/notification_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'notification_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class NotificationApi {
  @factoryMethod
  factory NotificationApi(
    Dio dio,
  ) = _NotificationApi;

  @GET(EndPoint.userNotifications)
  Future<NotificationResponseModel> getNotificationUser({
    @Query('page') required String page,
  });

// @POST(EndPoint.markNotificationAsRead)
// Future<NotificationResponseModel> markNotificationAsRead({
//   @Field('id') required String id,
// });
}
