import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/future/on_boarding/presentation/cubit/on_boarding__state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit(int totalPages) : super(OnBoardingPageState(0, totalPages));

  void nextPage() {
    if (state is OnBoardingPageState) {
      final currentState = state as OnBoardingPageState;
      if (currentState.pageIndex < currentState.totalPages - 1) {
        emit(OnBoardingPageState(currentState.pageIndex + 1, currentState.totalPages));
      } else {
        emit(OnBoardingCompleted());
      }
    }
  }

  void previousPage() {
    if (state is OnBoardingPageState) {
      final currentState = state as OnBoardingPageState;
      if (currentState.pageIndex > 0) {
        emit(OnBoardingPageState(currentState.pageIndex - 1, currentState.totalPages));
      }
    }
  }

  void skip() {
    emit(OnBoardingCompleted());
  }
}
