import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/notification_model.dart';

part 'notification_state.freezed.dart';
enum NotificationStatus { initial, loading, loaded, error }

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default([]) List<NotificationModel> notificationUser,
    @Default([]) List<NotificationModel> unreadNotifications,
    @Default(false) bool loadingMore,
    @Default(NotificationStatus.initial) NotificationStatus notificationStatus,
    // create state view for error


  }) = _NotificationState;
}
