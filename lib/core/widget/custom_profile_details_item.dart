// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:newprojectenv/core/utils/media_query_values.dart';
// import 'package:newprojectenv/core/widget/text_translate_manager.dart';
//
// import '../features/common/data/model/social_link_model.dart';
// import '../utils/widget/social_links_widget.dart';
//
// class CustomProfileDetailsItem extends StatelessWidget {
//   final String? text;
//   final String iconPath;
//   final Color iconColor;
//   final List<SocialLinkModel>? socialLinks;
//   final Function()? onTap;
//   final IconData? trailingIcon;
//   final double? height;
//   final double? width;
//   final bool? isSpacing;
//   final TextDecoration? textDecoration;
//
//   const CustomProfileDetailsItem({this.text,
//     required this.iconPath,
//     required this.iconColor,
//     this.socialLinks,
//     this.onTap,
//     this.trailingIcon,
//     this.width,
//     this.textDecoration,
//     this.height,
//     this.isSpacing,
//     Key? key})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return (text?.isEmpty ?? true) && (socialLinks?.isEmpty ?? true)
//         ? const SizedBox.shrink()
//         : GestureDetector(
//       onTap: onTap,
//       child: Column(
//         children: [
//           SizedBox(
//             height: isSpacing ?? true ? 15 : 0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: height ?? (context.exceededBreakPoint
//                     ? context.width * 0.075
//                     : context.width * 0.1),
//                 width: width ??
//                     (context.exceededBreakPoint ? context.width * 0.1 : context
//                         .width * 0.15),
//                 padding: EdgeInsets.all(8.sp),
//                 decoration: BoxDecoration(
//                     color: Theme
//                         .of(context)
//                         .colorScheme
//                         .primary
//                         .withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(5)),
//                 child: SvgPicture.asset(
//                   iconPath,
//                   color: iconColor,
//                 ),
//               ),
//               SizedBox(
//                 width: 15.sp,
//               ),
//               Expanded(
//                 child: socialLinks != null
//                     ? SizedBox(
//                   height: (context.exceededBreakPoint
//                       ? context.width * 0.075
//                       : context.width * 0.1),
//                   child: ListView.separated(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     itemCount: socialLinks!.length,
//                     itemBuilder: (context, index) =>
//                         SocialLinksWidget(socialLinks![index]),
//                     separatorBuilder: (context, index) {
//                       return SizedBox(
//                         width: 15.sp,
//                       );
//                     },
//                   ),
//                 )
//                     : TranslateText(
//                   text: text ?? '',
//                   styleText: StyleText.h5,
//                   fontWeight: FontWeight.bold,
//                   maxLines: 1,
//                   textDecoration:textDecoration,
//
//
//                 ),
//               ),
//               Visibility(
//                 visible: trailingIcon != null,
//                 child: Icon(
//                   trailingIcon,
//                   size: 30.sp,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
