// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:injectable/injectable.dart';
// import 'package:opensooq/core/error/failures.dart';
// import 'package:opensooq/core/usecasses/usecasses.dart';
// import 'package:opensooq/future/notification/domain/repositories/notification_repository.dart';
//
// @LazySingleton()
// class SendNotificationToken implements UseCases<void, NotificationTokenParams> {
//   final NotificationRepository notificationRepository;
//
//   SendNotificationToken({required this.notificationRepository});
//
//   @override
//   Future<Either<Failures, void>> call(NotificationTokenParams params) {
//     return notificationRepository.sendNotificationToken(token: params.fcmToken);
//   }
// }
//
// class NotificationTokenParams extends Equatable {
//   final String fcmToken;
//
//   const NotificationTokenParams({this.fcmToken = ''});
//   @override
//   List<Object?> get props => [fcmToken];
// }
