// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher_string.dart';
//
// class SocialLinksWidget extends StatelessWidget {
//   final SocialLinkModel socialLinkModel;
//
//   const SocialLinksWidget(this.socialLinkModel, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 1,
//       child: GestureDetector(
//           onTap: () async {
//             final url = socialLinkModel.url ?? '';
//             if (!await launchUrlString(
//               url,
//               mode: LaunchMode.externalApplication,
//             )) {
//               throw 'Could not launch $url';
//             }
//           },
//           child: CachedNetworkImage(
//             imageUrl: socialLinkModel.imageUrl ?? '',
//             fit: BoxFit.cover,
//           )),
//     );
//   }
// }
