// import 'package:flutter/material.dart';
// import 'package:newprojectenv/core/utils/media_query_values.dart';
// import 'package:newprojectenv/core/widget/gallery_item_widget.dart';
// import 'package:newprojectenv/features/request_service/data/models/Files.dart';
//
// class CustomProductInfo extends StatefulWidget {
//   const CustomProductInfo({
//     Key? key,
//     required this.imageUrl,
//   }) : super(key: key);
//   final List<Files> imageUrl;
//
//   @override
//   State<CustomProductInfo> createState() => _CustomProductInfoState();
// }
//
// class _CustomProductInfoState extends State<CustomProductInfo> {
//   int current = 0;
//
//   final PageController _controller = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             Container(
//               height: context.height * 0.25,
//               width: context.width,
//               padding: const EdgeInsets.all(15.0),
//               decoration: BoxDecoration(
//                   color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(10)),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Stack(
//                   alignment: AlignmentDirectional.topStart,
//                   children: [
//                     PageView(
//                         controller: _controller,
//                         onPageChanged: (index) {
//                           setState(() {
//                             current = index;
//                           });
//                         },
//                         children: widget.imageUrl
//                             .map((e) => GalleryItemWidget(e.file ?? ''))
//                             .toList()),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(4.0),
//                         child: Container(
//                           padding: const EdgeInsets.all(2.0),
//                           height: context.width * 0.09,
//                           width: context.width * 0.09,
//                           decoration: BoxDecoration(
//                               color: Theme.of(context).colorScheme.primary,
//                               borderRadius: BorderRadius.circular(5)),
//                           child: Icon(
//                             Icons.arrow_back_ios_new,
//                             color: Colors.white,
//                             size: context.width * 0.045,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             if (widget.imageUrl.length > 1)
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 6.0),
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: widget.imageUrl
//                         .asMap()
//                         .map((key, value) => MapEntry(
//                             key,
//                             GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   _controller.animateToPage(
//                                     current,
//                                     curve: Curves.linear,
//                                     duration: const Duration(milliseconds: 500),
//                                   );
//                                 });
//                               },
//                               child: current == key
//                                   ? AnimatedContainer(
//                                       duration:
//                                           const Duration(milliseconds: 500),
//                                       curve: Curves.easeIn,
//                                       width: 50.0,
//                                       height: 4.0,
//                                       margin: const EdgeInsets.symmetric(
//                                           horizontal: 3.0),
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(14),
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .primary,
//                                       ),
//                                     )
//                                   : AnimatedContainer(
//                                       duration:
//                                           const Duration(milliseconds: 500),
//                                       curve: Curves.easeIn,
//                                       width: 15.0,
//                                       height: 4.0,
//                                       margin: const EdgeInsets.symmetric(
//                                           horizontal: 3.0),
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(14),
//                                         color: (Colors.white.withOpacity(0.8)),
//                                       ),
//                                     ),
//                             )))
//                         .values
//                         .toList()),
//               ),
//           ],
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//       ],
//     );
//   }
// }
