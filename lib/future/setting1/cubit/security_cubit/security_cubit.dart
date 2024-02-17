import 'package:bloc/bloc.dart';
import 'package:opensooq/future/setting1/cubit/security_cubit/security_state.dart';


class SecurityCubit extends Cubit<SecurityState> {
  SecurityCubit() : super(SecurityInitial());
  void toggle() {
    if (state is ToggleOnState) {
      emit(ToggleOffState());
    } else {
      emit(ToggleOnState());
    }
  }
}
