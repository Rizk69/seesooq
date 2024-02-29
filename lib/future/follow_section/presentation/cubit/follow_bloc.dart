import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'follow_event.dart';
part 'follow_state.dart';

class FollowBloc extends Bloc<FollowEvent, FollowState> {
  FollowBloc() : super(FollowInitial()) {
    on<FollowEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
