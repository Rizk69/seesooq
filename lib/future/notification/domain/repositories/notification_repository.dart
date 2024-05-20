import 'package:dartz/dartz.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/notification/data/models/notification_response_model.dart';

abstract class NotificationRepository {
  Future<Either<Failures, NotificationResponseModel>> getUserNotification({required String page});
  // Future<Either<Failures, List<NotificationModel>>> markNotificationAsRead(
  //     {required String id});
  // Future<Either<Failures, List<NotificationModel>>> readAllNotifications();
  // Future<Either<Failures, String>> sendNotificationToken(
  //     {required String token});
}
