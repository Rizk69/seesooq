import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/config/routes/go_redirect.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/login/presentation/cubit/login_state.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_state.dart';

class AuthRedirect extends GoRedirect {
  final excludedPaths = [Routes.loginSplash, Routes.login, "/login/signUp", Routes.forgetPasswordPRoute, Routes.confirmCode];

  @override
  FutureOr<String?> call(BuildContext context, GoRouterState state) async {
    var signUpState = SignUpCubit.get(context).state;
    var loginState = LoginCubit.get(context).state;
    final isLoggingIn = state.uri.path == '/login';

    final userSaved = (loginState.isHome);

    if (isLoggingIn && userSaved) {
      print('isLoggingIn && userSaved');
      return Routes.home;
    }

    if (signUpState.signUpStatus == SignUpStatus.doneOtp) {
      print('signUpState.signUpStatus == SignUpStatus.doneOtp');
      return Routes.home;
    }
    if (loginState.loginStatus == LoginStatus.success) {
      print('loginState.loginStatus == LoginStatus.success');
      return Routes.home;
    }
    if (loginState.loginStatus == LoginStatus.unAuthorized) {
      Future.delayed(Duration.zero, () {
        GoRouter.of(context).goNamed(Routes.login);
      });
    }

    return null;
  }
}
