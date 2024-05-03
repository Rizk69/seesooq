import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/config/routes/go_redirect.dart';
import 'package:opensooq/core/utils/alert_gust.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/login/presentation/cubit/login_state.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_state.dart';

class AuthRedirect extends GoRedirect {
  final excludedPaths = [
    Routes.loginSplash,
    Routes.login,
    "/login/signUp",
    '/login/forgetPasswordPage',
    '/login/forgetPasswordPage/confirmCode',
    "/login/signUp/confirmCodeSignUp",
    "/login/forgetPasswordPage/confirmCode/unLockPassword",
  ];

  @override
  FutureOr<String?> call(BuildContext context, GoRouterState state) async {
    var signUpState = SignUpCubit.get(context).state;
    var loginState = LoginCubit.get(context).state;
    final isLoggingIn = excludedPaths.contains(state.uri.path);

    final userSaved = (loginState.isHome);
    print('userSaved: $userSaved');
    print('isLoggingIn: $isLoggingIn');
    print('loginState.loginStatus: ${state.uri.path}');

    if (isLoggingIn && userSaved && loginState.loginStatus == LoginStatus.success) {
      return Routes.home;
    }

    if (signUpState.signUpStatus == SignUpStatus.doneOtp && !isLoggingIn) {
      return Routes.home;
    }
    if (loginState.loginStatus == LoginStatus.success && isLoggingIn) {
      return Routes.home;
    }
    if (loginState.loginStatus == LoginStatus.unAuthorized && !isLoggingIn) {
      return Routes.login;
    }

    if (loginState.loginStatus == LoginStatus.asGust && state.uri.path == Routes.login) {
      return Routes.home;
    }
    if (loginState.loginStatus == LoginStatus.asGust && !isLoggingIn) {
      var ctx = rootNavigatorKey.currentContext;
      showLoginOrGuestDialog(ctx!);
      return Routes.home;
    }

    return null;
  }
}
