part of 'notification_cubit.dart';

@immutable
class NotificationState {
  final Set<String> selectedItems;

  NotificationState(this.selectedItems);

  NotificationState.initial() : selectedItems = {};
}

