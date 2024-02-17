import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/notification/presentation/cubit/notification_state.dart';

import '../../../../core/utils/app_constants.dart';
import '../../data/models/notification_model.dart';
import '../../domain/usecases/get_notification_usecase.dart';

@Injectable()
class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit({
    required this.getUserNotificationsUseCase,
  }) : super(const NotificationState());

  final GetUserNotificationsUseCase getUserNotificationsUseCase;

  static NotificationCubit get(context) => BlocProvider.of(context);
  NotificationState _notificationState = const NotificationState();

  int page = 1;
  bool hasMoreItems = true;

  onSuccess() {
    if (!isClosed) emit((_notificationState));
  }

  // onErrorState(Failures failures) {
  //   if (!isClosed) emit(ViewState.error(failures));
  // }

  Future<void> initialize() async {
    page = 1;
    hasMoreItems = true;
    emit(state.copyWith(notificationStatus: NotificationStatus.loading));
    await getUserNotificationsUseCase
        .call(const GetUserNotificationsParams())
        .then((value) => value.fold((l) {
      _notificationState = _notificationState.copyWith(
          notificationStatus: NotificationStatus.error);
            }, (r) {
              if (state.notificationUser.isEmpty && r.isEmpty) {

                _notificationState = _notificationState.copyWith(
                    notificationStatus: NotificationStatus.error);
              }
              _updateNotificationList(r);
              if (r.length < AppConstants.itemsPerPage) {
                hasMoreItems = false;
              }
              onSuccess();
            }));
  }

  _updateNotificationList(List<NotificationModel> r) {
    final unreadNotifications =
        r.where((element) => element.readStatus != 1).toList();
    _notificationState = _notificationState.copyWith(
        notificationUser: r, unreadNotifications: unreadNotifications);

  }

  // void readAllNotifications() {
  //   readAllNotificationsUseCase(NoParams()).then((value) => value.fold(
  //       (l) => onSuccess(),
  //       (r) => (r) {
  //             _updateNotificationList(r);
  //             if (r.length < AppConstants.itemsPerPage) {
  //               hasMoreItems = false;
  //             }
  //
  //             onSuccess();
  //           }));
  // }
  //
  // void handleNotificationClick(NotificationModel? notificationModel) async {
  //   if (notificationModel != null) {
  //     handleMessage(notificationModel.toJson());
  //     markNotificationRead(notificationModel.id);
  //   }
  // }
  //
  // void markNotificationRead(int? id) {
  //   if (id != null) {
  //     markNotificationReadUseCase(MarkNotificationReadParams(id: id.toString()))
  //         .then((value) => value.fold((l) => onSuccess(), (r) {
  //               _updateNotificationList(r);
  //               if (r.length < AppConstants.itemsPerPage) {
  //                 hasMoreItems = false;
  //               }
  //
  //               onSuccess();
  //             }));
  //   }
  // }

  loadMore() async {
    if (hasMoreItems && !_notificationState.loadingMore) {
      page++;
      _notificationState = _notificationState.copyWith(loadingMore: true);
      onSuccess();
      var newList = (await getUserNotificationsUseCase
              .call(GetUserNotificationsParams(page: page.toString())))
          .fold((l) => <NotificationModel>[], (r) => r);
      if (newList.isEmpty || newList.length < AppConstants.itemsPerPage) {
        hasMoreItems = false;
      }
      if (_notificationState.loadingMore) {
        var previousList =
            List<NotificationModel>.from(_notificationState.notificationUser);
        _updateNotificationList([...previousList, ...newList]);
        _notificationState = _notificationState.copyWith(loadingMore: false);
        onSuccess();
      }
    }
  }

  void checkPermissionsNotification() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

// void updateFcmToken() async {
//   var fcmToken = await FirebaseMessaging.instance.getToken();
//   await sendNotificationToken
//       .call(NotificationTokenParams(fcmToken: fcmToken ?? ''));
// }
}
