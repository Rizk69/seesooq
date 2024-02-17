import 'package:flutter_bloc/flutter_bloc.dart';

enum FollowStatus { following, notFollowing }

class FollowCubit extends Cubit<FollowStatus> {
  FollowCubit() : super(FollowStatus.notFollowing);

  void toggleFollow() {
    emit(state == FollowStatus.notFollowing
        ? FollowStatus.following
        : FollowStatus.notFollowing);
  }
}
