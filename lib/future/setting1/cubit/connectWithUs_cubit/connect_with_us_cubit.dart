import 'package:flutter_bloc/flutter_bloc.dart';

import 'connect_with_us_state.dart';

class ConnectWithUsCubit extends Cubit<ConnectWithUsState> {
  ConnectWithUsCubit() : super(ConnectWithUsState());
  static ConnectWithUsCubit get(context) => BlocProvider.of(context);

  void updateCountry(
      {required String countryCode, required String countryFlag}) {
    emit(state.copyWith(
      countryCode: countryCode,
      countryFlag: countryFlag,
    ));
  }
}
