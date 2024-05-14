import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

void showLoginOrGuestDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog.adaptive(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: const TranslateText(
          text: 'Must Be Logged In',
          styleText: StyleText.h4,
          fontSize: 20,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.all(16),
        content: const TranslateText(
          text: 'Would you like to log in or continue as a guest?',
          styleText: StyleText.h5,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        actionsPadding: const EdgeInsets.all(16),
        actionsOverflowDirection: VerticalDirection.down,
        actionsOverflowButtonSpacing: 16,
        actionsAlignment: MainAxisAlignment.center,
        actionScrollController: ScrollController(),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Navigator.of(context).pushNamed(Routes.login);
              context.goNamed(Routes.login);
            },
            child: const TranslateText(
              text: 'Log In',
              styleText: StyleText.h5,
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
              child: const TranslateText(
                text: 'Cancel',
                styleText: StyleText.h5,
              )),
        ],
      );
    },
  );
}
