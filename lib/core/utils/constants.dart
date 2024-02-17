import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  static void showErrorDialog(
      {required BuildContext context, required String msg}) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(msg),
            actions: [TextButton(onPressed: () {}, child: const Text("Ok"))],
          );
        });
  }

  // static void showToast(
  //     {required BuildContext context, required String msg, Color? color}) {
  //   Fluttertoast.showToast(
  //       msg: msg, backgroundColor: color ?? AppColors.primary);
  // }
}
