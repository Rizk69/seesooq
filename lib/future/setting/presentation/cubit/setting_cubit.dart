import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:opensooq/future/setting/presentation/cubit/setting_state.dart';

import '../../../../core/usecasses/usecasess_shared.dart';
import '../../domain/use_cases/get_fingerprint_usecase.dart';
import '../../domain/use_cases/save_fingerprint_usecase.dart';

@Injectable()
class SettingCubit extends Cubit<SettingState> {
  SettingCubit(this.getFingerPrintUseCase,this.saveFingerPrintUseCase) : super(const SettingState());
  GetFingerPrintUseCase getFingerPrintUseCase;
  SaveFingerPrintUseCase saveFingerPrintUseCase;

  static SettingCubit get(context) => BlocProvider.of(context);

  void checkLocalAuth() async {
    final LocalAuthentication auth = LocalAuthentication();
    final List<BiometricType> availableBiometrics =
        await auth.getAvailableBiometrics();
    print('ssssssss$availableBiometrics');
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await auth.isDeviceSupported();
    if (canAuthenticate) {
      if (availableBiometrics.isNotEmpty) {
        if (availableBiometrics.contains(BiometricType.face)) {
          emit(state.copyWith(availableBiometrics: [BiometricType.face]));
        } else if (availableBiometrics.contains(BiometricType.fingerprint)) {
          emit(
              state.copyWith(availableBiometrics: [BiometricType.fingerprint]));
        } else {
          emit(state.copyWith(availableBiometrics: [BiometricType.weak]));
        }
      }
    }
  }

  enableFingerPrint() async {
    final LocalAuthentication auth = LocalAuthentication();
    final List<BiometricType> availableBiometrics =
    await auth.getAvailableBiometrics();
    if(availableBiometrics.isNotEmpty){
      auth.authenticate(localizedReason: 'please authenticate to login to app').then((value) async{
        if(value){
          final response = await saveFingerPrintUseCase.call(NoParams());
          response.fold((l) {

          }, (r) {
            emit(state.copyWith(isFingerPrint: true));
          });
        }
      });


    }

  }
}
