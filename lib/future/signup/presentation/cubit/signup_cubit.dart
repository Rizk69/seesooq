import 'dart:async';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/signup/data/repositories/params/signup_params.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_state.dart';
import 'package:opensooq/future/user_local_model.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@lazySingleton
class SignUpCubit extends Cubit<SignUpState> with ChangeNotifier {
  SignUpCubit(this.signUpRepository) : super(const SignUpState()) {}

  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  final SignUpRepository signUpRepository;

  static SignUpCubit get(context) => BlocProvider.of(context);

  Future<void> signUpWithEmailAndPhone({required SignUpParams params}) async {
    EasyLoading.show(status: 'loading');
    emit(state.copyWith(
      signUpStatus: SignUpStatus.loading,
      phoneNumber: params.phone,
    ));
    final result = await signUpRepository.signUpWithEmailAndPhone(params: params);
    result.fold(
      (l) {
        EasyLoading.showError(l.message.toString());

        emit(state.copyWith(signUpStatus: SignUpStatus.error));
      },
      (r) => emit(state.copyWith(
        signUpStatus: SignUpStatus.otp,
        signUpModel: r,
      )),
    );
    EasyLoading.dismiss();
  }

  StreamController<ErrorAnimationType>? errorController = StreamController<ErrorAnimationType>();
  bool hasError = false;

  Future<void> checkCodeVerify() async {
    if (state.pinCode.length != 6 || int.parse(state.pinCode) != state.signUpModel?.data?.otp) {
      errorController!.add(ErrorAnimationType.shake); // Triggering error shake animation
      emit(state.copyWith(hasErrorPinCode: true));
    } else {
      veryFyOtp();

      notifyListeners();
    }
  }

  Future<void> veryFyOtp() async {
    final result = await signUpRepository.verifyOtp(phoneNumber: state.phoneNumber, otp: state.pinCode);
    result.fold(
      (l) {
        EasyLoading.showError(l.message.toString());
        emit(state.copyWith(signUpStatus: SignUpStatus.error));
      },
      (r) {
        signUpRepository.cacheUserModel(
            userLocalModel: UserLocalModel(
          token: r.token,
          user: r.user,
        ));
        emit(state.copyWith(signUpStatus: SignUpStatus.doneOtp));

        notifyListeners();
      },
    );
  }

  void updatePinCode(String pinCode) {
    emit(state.copyWith(pinCode: pinCode));
  }

  void confirmTermAndCondition(bool value) {
    emit(state.copyWith(confirmPrivacyAndTerms: value));
  }

  void updateCountry({required String countryCode, required String countryFlag}) {
    emit(state.copyWith(
      countryCode: countryCode,
      countryFlag: countryFlag,
    ));
  }

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    // Optional clientId
    // clientId: 'your-client_id.apps.googleusercontent.com',
    scopes: scopes,
  );

  Future<void> signUpFromGoogle() async {
    try {
      final user = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await user!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

      if (userCredential.additionalUserInfo?.isNewUser ?? false) {
        final response = await signUpRepository.signUpFromSocial(
            socialId: userCredential.credential?.accessToken ?? '',
            email: userCredential.user?.email ?? '',
            name: userCredential.user?.displayName ?? '');

        response.fold(
          (l) {
            emit(state.copyWith(signUpStatus: SignUpStatus.error));
          },
          (r) {
            loginWithSocial(userCredential.credential?.accessToken ?? '');
          },
        );
      } else {
        loginWithSocial(userCredential.credential?.accessToken ?? '');
      }
    } catch (error) {}
  }

  Future<void> loginWithSocial(String socialId) async {
    if (Platform.isAndroid) {
      deviceInfo.androidInfo.then((value) async {
        final response = await signUpRepository.loginInFromSocial(
          token: await FirebaseMessaging.instance.getToken() ?? '',
          deviceId: value.serialNumber,
          device: value.model,
          socialId: socialId,
        );

        response.fold(
          (l) {
            emit(state.copyWith(signUpStatus: SignUpStatus.error));
          },
          (r) {
            emit(state.copyWith(
              signUpStatus: SignUpStatus.social,
            ));
            signUpRepository.cacheUserModel(
                userLocalModel: UserLocalModel(
              token: r.token,
              user: r.user,
            ));
            notifyListeners();
          },
        );
      });
    } else {
      deviceInfo.iosInfo.then((value) async {
        final response = await signUpRepository.loginInFromSocial(
          token: await FirebaseMessaging.instance.getToken() ?? '',
          deviceId: value.identifierForVendor.toString(),
          device: value.model,
          socialId: socialId,
        );

        response.fold(
          (l) {
            emit(state.copyWith(signUpStatus: SignUpStatus.error));
          },
          (r) {
            emit(state.copyWith(
              signUpStatus: SignUpStatus.social,
            ));
            signUpRepository.cacheUserModel(
                userLocalModel: UserLocalModel(
              token: r.token,
              user: r.user,
            ));
            notifyListeners();
          },
        );
      });
    }
  }

  Future<void> signUpFromApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final user = credential;
      if (user.familyName?.isNotEmpty ?? false) {}

      final userApple = await FirebaseAuth.instance.signInWithCredential(
        OAuthProvider('apple.com').credential(
          idToken: credential.identityToken,
          accessToken: credential.authorizationCode,
        ),
      );
      print(userApple.additionalUserInfo?.isNewUser);

      print(user);
    } catch (error) {
      print(error);
    }
  }
}

List<String> scopes = <String>[
  'email',
  'https://www.googleapis.com/auth/contacts.readonly',
];
