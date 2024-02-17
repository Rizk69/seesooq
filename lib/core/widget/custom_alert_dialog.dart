// import 'package:flutter/material.dart';
//
// import '../../core/features/welcome/presentation/screen/widget/custom_button_app.dart';
//
// class CustomAlertDialog extends StatelessWidget {
//   final Widget? title;
//   final Widget? content;
//   final Function()? onYesPressed;
//   final Function()? onNoPressed;
//   const CustomAlertDialog(
//       {this.title, this.content, this.onYesPressed, this.onNoPressed, Key? key})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: title,
//       content: content,
//       actions: <Widget>[
//         if (onYesPressed != null)
//           Row(
//             children: [
//               if (onNoPressed != null)
//                 Expanded(
//                   child: SizedBox(
//                     height: 55,
//                     child: CustomButtonApp(
//                       title: 'no',
//                       backGroundColor: Colors.white,
//                       onPress: onNoPressed,
//                       textColor: Theme.of(context).colorScheme.primary,
//                     ),
//                   ),
//                 ),
//               const SizedBox(
//                 width: 20,
//               ),
//               Expanded(
//                 child: SizedBox(
//                   height: 55,
//                   child: CustomButtonApp(
//                     title: 'yes',
//                     onPress: onYesPressed,
//                   ),
//                 ),
//               ),
//             ],
//           )
//       ],
//     );
//   }
// }
