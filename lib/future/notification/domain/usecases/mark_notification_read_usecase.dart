// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:injectable/injectable.dart';
// import 'package:newprojectenv/core/error/failures.dart';
// import 'package:newprojectenv/core/usecasses/usecasses.dart';
// import 'package:newprojectenv/features/notification/domain/repositories/notification_repository.dart';
//
// import '../../data/models/notification_model.dart';
//
// @LazySingleton()
// class MarkNotificationReadUseCase
//     implements UseCases<List<NotificationModel>, MarkNotificationReadParams> {
//   final NotificationRepository notificationRepository;
//
//   MarkNotificationReadUseCase({required this.notificationRepository});
//
//   @override
//   Future<Either<Failures, List<NotificationModel>>> call(
//       MarkNotificationReadParams params) async{
//
//     return await notificationRepository.markNotificationAsRead(id: params.id);
//   }
// }
//
// class MarkNotificationReadParams extends Equatable {
//   final String id;
//
//   const MarkNotificationReadParams({required this.id});
//   @override
//   List<Object?> get props => [id];
// }
