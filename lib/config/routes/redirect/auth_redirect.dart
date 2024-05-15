import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/config/routes/go_redirect.dart';

class AuthRedirect extends GoRedirect {
  final excludedPaths = [
    Routes.login,
  ];

  @override
  FutureOr<String?> call(BuildContext context, GoRouterState state) async {
    final isLoggingIn = excludedPaths.contains(state.uri.path);

    // print('homeState.userLocalModel?.token: ${state.uri.path}');
    // print('homeState.userLocalModel?.token: ${Routes.login}');
    // if (homeState.userLocalModel?.token == null && !isLoggingIn) {
    //   var ctx = rootNavigatorKey.currentContext;
    //   showLoginOrGuestDialog(ctx!);
    //   return null;
    // }

    return null;
  }
}
