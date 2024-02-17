// import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';
// import 'package:newprojectenv/core/error/failures.dart';
// import 'package:newprojectenv/core/usecasses/usecasess_shared.dart';
// import 'package:newprojectenv/core/usecasses/usecasses.dart';
// import 'package:newprojectenv/features/notification/domain/repositories/notification_repository.dart';
//
// import '../../data/models/notification_model.dart';
//
// @LazySingleton()
// class ReadAllNotificationsUseCase
//     implements UseCases<List<NotificationModel>, NoParams> {
//   final NotificationRepository notificationRepository;
//
//   ReadAllNotificationsUseCase({required this.notificationRepository});
//
//   @override
//   Future<Either<Failures, List<NotificationModel>>> call(NoParams params) {
//     return notificationRepository.readAllNotifications();
//   }
// }
