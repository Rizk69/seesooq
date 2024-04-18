import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationState.initial());

  void toggleItem(String item) {
    final Set<String> updatedItems = Set.from(state.selectedItems);
    if (updatedItems.contains(item)) {
      updatedItems.remove(item);
    } else {
      updatedItems.add(item);
    }
    emit(NotificationState(updatedItems));
  }
}
