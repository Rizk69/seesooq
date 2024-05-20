import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/notification/data/models/notification_response_model.dart';
import 'package:opensooq/future/notification/domain/repositories/notification_repository.dart';

@Injectable()
class GetUserNotificationsUseCase implements UseCases<NotificationResponseModel, GetUserNotificationsParams> {
  final NotificationRepository notificationRepository;

  GetUserNotificationsUseCase({required this.notificationRepository});

  @override
  Future<Either<Failures, NotificationResponseModel>> call(GetUserNotificationsParams params) {
    return notificationRepository.getUserNotification(page: params.page);
  }
}

class GetUserNotificationsParams extends Equatable {
  final String page;

  const GetUserNotificationsParams({this.page = '1'});
  @override
  List<Object?> get props => [page];
}
