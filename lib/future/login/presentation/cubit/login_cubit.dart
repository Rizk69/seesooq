import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/login/data/models/login_model.dart';
import 'package:opensooq/future/login/domain/repositories/login_params.dart';
import 'package:opensooq/future/login/domain/repositories/login_repo.dart';
import 'package:opensooq/future/login/domain/usecase/change_password.dart';
import 'package:opensooq/future/login/domain/usecase/forget_password.dart';
import 'package:opensooq/future/login/presentation/cubit/login_state.dart';
import 'package:opensooq/future/user_local_model.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

@LazySingleton()
class LoginCubit extends Cubit<LoginState> with ChangeNotifier {
  LoginCubit(this.loginRepository, this.forGetPasswordUserUseCase, this.changePasswordUserUseCase) : super(const LoginState()) {
    getLocalUser();
  }
  final LoginRepository loginRepository;
  final ForGetPasswordUserUseCase forGetPasswordUserUseCase;
  final ChangePasswordUserUseCase changePasswordUserUseCase;

  static LoginCubit get(context) => BlocProvider.of(context);

  Future<void> loginUserWithEmailOrPhone({required String email, required String password}) async {
    emit(state.copyWith(loginStatus: LoginStatus.loading));
    EasyLoading.show(status: 'loading...');
    final response = await loginRepository.loginWithEmailOrPhone(
      params: LoginParams(
        email: email,
        password: password,
      ),
    );
    response.fold(
      (l) {
        EasyLoading.showError(l.message.toString());
        emit(state.copyWith(
          loginStatus: LoginStatus.error,
        ));
      },
      (r) {
        emit(
          state.copyWith(
            loginStatus: LoginStatus.success,
            loginModel: r,
          ),
        );
        notifyListeners();
      },
    );

    EasyLoading.dismiss();
    notifyListeners();
  }

  Future<void> forgetPassword({required String email}) async {
    EasyLoading.show(status: 'loading...');
    final response = await forGetPasswordUserUseCase(
      ForGetPasswordUserParams(
        emailOrPhone: email,
      ),
    );
    response.fold(
      (l) {
        EasyLoading.showError(l.message.toString());
        emit(state.copyWith(
          forGetPasswordStatus: ForGetPasswordStatus.otpError,
        ));
      },
      (r) {
        emit(
          state.copyWith(
            forGetPasswordStatus: ForGetPasswordStatus.otpMode,
            responseOtpCode: r.data?.otp.toString() ?? '',
          ),
        );
        notifyListeners();
      },
    );

    EasyLoading.dismiss();
    notifyListeners();
  }

  Future<void> getLocalUser() async {
    final user = await loginRepository.getUserLocal();

    user.fold((l) {
      emit(state.copyWith(
        isHome: false,
      ));
    }, (r) {
      if (r.token != null) {
        emit(state.copyWith(
          isHome: true,
          loginModel: LoginModel(
            token: r.token,
            user: UserDataModel(
              id: r.user?.id,
              name: r.user?.name,
              phone: r.user?.phone,
            ),
          ),
        ));
        notifyListeners();
      } else {
        emit(state.copyWith(
          loginStatus: LoginStatus.unAuthorized,
        ));
      }
    });
    notifyListeners();
    print('user: ${state.isHome}');
  }

  Future<void> deleteLocalUser() async {
    final user = await loginRepository.deleteUserLocal();

    user.fold(
      (l) {
        emit(state.copyWith(
          isHome: false,
        ));
      },
      (r) {
        emit(state.copyWith(
          isHome: false,
        ));
        notifyListeners();
      },
    );
    notifyListeners();
  }

  Future<void> changePasswordUser({required String phone, required String password}) async {
    EasyLoading.show(status: 'loading...');
    final response = await changePasswordUserUseCase(
      ChangePasswordUserParams(
        password: password,
        phone: phone,
      ),
    );
    response.fold(
      (l) {
        EasyLoading.showError(l.message.toString());
      },
      (r) {
        EasyLoading.showSuccess(r.data?.message.toString() ?? '');
        emit(
          state.copyWith(
            forGetPasswordStatus: ForGetPasswordStatus.changedPassword,
          ),
        );
      },
    );

    EasyLoading.dismiss();
  }

  updateOtpCode({required String otpCode}) {
    emit(
      state.copyWith(
        otpCode: otpCode,
      ),
    );
  }

  Future<void> checkCodeVerify() async {
    if (state.otpCode.length != 6 || (state.otpCode) != state.responseOtpCode.toString()) {
      errorController!.add(ErrorAnimationType.shake); // Triggering error shake animation
      emit(state.copyWith(hasErrorPinCode: true));
    } else {
      emit(state.copyWith(hasErrorPinCode: false, forGetPasswordStatus: ForGetPasswordStatus.otpSuccess));

      notifyListeners();
    }
  }

  void updateRecoveryEmail({required String recoveryEmail}) {
    emit(
      state.copyWith(
        recoveryEmail: recoveryEmail,
      ),
    );
  }

  void updateTogglePassword() {
    emit(
      state.copyWith(
        togglePassword: !state.togglePassword,
      ),
    );
  }

  void updateToggleUnlockPassword() {
    emit(
      state.copyWith(
        toggleUnlockPassword: !state.toggleUnlockPassword,
      ),
    );
  }

  Future<void> logoutUser() async {
    await FirebaseAuth.instance.signOut();
    notifyListeners();
  }

  StreamController<ErrorAnimationType>? errorController = StreamController<ErrorAnimationType>();
  bool hasError = false;
}
