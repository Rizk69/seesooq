import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/notification_api.dart';

import '../models/notification_response_model.dart';

abstract class NotificationRemoteDataSource {
  Future<NotificationResponseModel> getNotificationUser({required String page});
  // Future<NotificationResponseModel> markNotificationAsRead(
  //     {required String id});
  // Future<NotificationResponseModel> readAllNotifications();
  // Future<String> sendNotificationToken({required String token});
}

@Injectable(as: NotificationRemoteDataSource)
class GetUserNotificationRemoteImpl implements NotificationRemoteDataSource {
  final NotificationApi apiConsumer;

  GetUserNotificationRemoteImpl(this.apiConsumer);

  @override
  Future<NotificationResponseModel> getNotificationUser(
          {required String page}) async{
    return apiConsumer.getNotificationUser(page: page);
  }
      // apiConsumer.getNotificationUser(page: page);

  // @override
  // Future<NotificationResponseModel> markNotificationAsRead(
  //         {required String id}) =>
  //     apiConsumer.markNotificationAsRead(id: id);
  //
  // @override
  // Future<NotificationResponseModel> readAllNotifications() =>
  //     apiConsumer.readAllNotifications();
  //
  // @override
  // Future<String> sendNotificationToken({required String token}) async =>
  //     apiConsumer.setNotificationToken(token: token);
}
