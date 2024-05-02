import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';

void showLoginOrGuestDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Welcome!'),
        content: Text('Would you like to log in or continue as a guest?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Navigator.of(context).pushNamed(Routes.login);

              context.goNamed(Routes.login);
            },
            child: Text('Log In'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.read<LoginCubit>().loginAsGuest();
            },
            child: Text('Continue as Guest'),
          ),
        ],
      );
    },
  );
}
