// import 'package:flutter/material.dart';
//
// import '../../app.dart';
// import '../widget/text_translate_manager.dart';
//
// void showCustomSnackBar(String text, {Color? color}) {
//   scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
//   scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
//     content: TranslateText(
//       text: text,
//       styleText: StyleText.h5,
//       colorText: Colors.white,
//     ),
//     backgroundColor: color,
//   ));
// }
//
// void showCustomErrorSnackBar(String? text) {
//   if (text != null && text.isNotEmpty) {
//     scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
//     scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
//       content: TranslateText(
//         text: text,
//         styleText: StyleText.h5,
//         colorText: Colors.white,
//       ),
//       backgroundColor: Colors.red,
//     ));
//   }
// }
