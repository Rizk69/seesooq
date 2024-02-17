// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:newprojectenv/core/utils/media_query_values.dart';
// import 'package:newprojectenv/core/widget/text_translate_manager.dart';
//
// import '../features/welcome/presentation/screen/widget/custom_button_app.dart';
// import '../utils/utils/app_colors.dart';
// import '../utils/payment_types.dart';
//
// class SelectPaymentMethodDialog extends StatelessWidget {
//   const SelectPaymentMethodDialog({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Padding(
//         padding: EdgeInsets.symmetric(horizontal: 8.0),
//         child: TranslateText(
//           text: 'selectPaymentMethod',
//           styleText: StyleText.h4,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // TODO GET PAYMENT METHOD FOR USER
//           ...paymentTypes
//               .map((e) => Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       CustomSelectableButtonApp(
//                         isSelected: false,
//                         // state.data?.selectedUserType == e['type'],
//                         height: context.height * 0.08,
//                         onPressed: () {
//                           // cubit.selectUserType(e['type']);
//                         },
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             SvgPicture.asset(
//                               e['iconPath'],
//                               width: context.width * 0.1,
//                             ),
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             TranslateText(
//                                 text: e['title'] ?? '',
//                                 styleText: StyleText.h6,
//                                 colorText: AppColors.neutralGrey,
//                                 fontWeight: FontWeight.bold),
//                             const SizedBox.shrink(),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 15,
//                       ),
//                     ],
//                   ))
//               .toList(),
//           SizedBox(
//             height: 55,
//             child: CustomButtonApp(
//               title: 'confirm',
//               onPress: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ),
//         ],
//       ),
//       actions: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const TranslateText(
//                 text: 'Add new payment',
//                 styleText: StyleText.h6,
//                 fontWeight: FontWeight.bold,
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               SizedBox(
//                 height: 55,
//                 child: CustomSelectableButtonApp(
//                   isSelected: false,
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: TranslateText(
//                     text: 'add',
//                     styleText: StyleText.h4,
//                     fontWeight: FontWeight.bold,
//                     colorText: Theme.of(context).colorScheme.primary,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
