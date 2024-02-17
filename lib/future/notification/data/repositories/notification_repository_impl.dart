import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/network/network_info.dart';
import 'package:opensooq/future/notification/data/datasources/notification_remote_data_source.dart';
import 'package:opensooq/future/notification/domain/repositories/notification_repository.dart';

import '../../../../core/error/error_handler.dart';
import '../models/notification_model.dart';

@Injectable(as: NotificationRepository)
class NotificationRepositoryImpl implements NotificationRepository {
  final NetworkInfo networkInfo;
  final NotificationRemoteDataSource getUserRemoteDataSource;

  NotificationRepositoryImpl(
      {required this.networkInfo, required this.getUserRemoteDataSource});

  @override
  Future<Either<Failures, List<NotificationModel>>> getUserNotification(
      {required String page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await getUserRemoteDataSource.getNotificationUser(page: page);
        return Right(response.notifications!);
      } catch (e) {
        return Left(ErrorHandler.handleError(e));
      }
    } else {
      return Left(CacheFailure());
    }
  }

  // @override
  // Future<Either<Failures, List<NotificationModel>>> markNotificationAsRead(
  //     {required String id}) async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       final response =
  //           await getUserRemoteDataSource.markNotificationAsRead(id: id);
  //
  //       return Right(response.notifications!);
  //     } catch (e) {
  //       return Left(ErrorHandler.handleError(e));
  //     }
  //   } else {
  //     return Left(CacheFailure());
  //   }
  // }
  //
  // @override
  // Future<Either<Failures, List<NotificationModel>>>
  //     readAllNotifications() async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       final response = await getUserRemoteDataSource.readAllNotifications();
  //       return Right(response.notifications!);
  //     } catch (e) {
  //       return Left(ErrorHandler.handleError(e));
  //     }
  //   } else {
  //     return Left(CacheFailure());
  //   }
  // }
  //
  // @override
  // Future<Either<Failures, String>> sendNotificationToken(
  //     {required String token}) async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       final response =
  //           await getUserRemoteDataSource.sendNotificationToken(token: token);
  //       if (kDebugMode) {
  //         print(response);
  //       }
  //       return Right(response);
  //     } catch (e) {
  //       return Left(ErrorHandler.handleError(e));
  //     }
  //   } else {
  //     return Left(CacheFailure());
  //   }
  // }
}
