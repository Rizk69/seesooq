// import 'dart:io';
//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:easy_image_viewer/easy_image_viewer.dart';
// import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
// import 'package:flutter/material.dart';
// import 'package:mime/mime.dart';
// import 'package:newprojectenv/core/widget/custom_app_bar.dart';
// import 'package:newprojectenv/core/widget/text_translate_manager.dart';
// import 'package:video_player/video_player.dart';
//
// class RemovableMediaItemWidget extends StatefulWidget {
//   final String path;
//   final Function()? onRemove;
//
//   const RemovableMediaItemWidget(this.path, {this.onRemove, Key? key})
//       : super(key: key);
//
//   @override
//   State<RemovableMediaItemWidget> createState() =>
//       _RemovableMediaItemWidgetState();
// }
//
// class _RemovableMediaItemWidgetState extends State<RemovableMediaItemWidget> {
//   late VideoPlayerController _controller;
//   late PDFDocument doc;
//   late bool isVideo;
//   late bool isPdf;
//   late bool isNetwork;
//   bool isLoading = false;
//   bool isError = false;
//
//   @override
//   void initState() {
//     isNetwork = widget.path.contains('http');
//     String? mimeStr = lookupMimeType(widget.path);
//     var fileType = mimeStr?.split('/');
//     isPdf = mimeStr?.contains('pdf') ?? false;
//     isVideo = fileType?.first == 'video';
//     super.initState();
//     if (isVideo) initVideo();
//     if (isPdf) initPdf();
//   }
//
//   initVideo() {
//     if (mounted) {
//       setState(() {
//         isLoading = true;
//       });
//     }
//     _controller = isNetwork
//         ? VideoPlayerController.network(widget.path)
//         : VideoPlayerController.file(File(widget.path))
//       ..initialize().whenComplete(() {
//         if (mounted) {
//           setState(() {
//             isLoading = false;
//           });
//         }
//       });
//   }
//
//   initPdf() async {
//     if (mounted) {
//       setState(() {
//         isLoading = true;
//       });
//     }
//     try {
//       doc = isNetwork
//           ? await PDFDocument.fromURL(widget.path)
//           : await PDFDocument.fromFile(File(widget.path));
//       if (mounted) {
//         setState(() {
//           isLoading = false;
//         });
//       }
//     } catch (e) {
//       if (mounted) {
//         setState(() {
//           isLoading = false;
//           isError = true;
//         });
//       }
//     }
//   }
//
//   @override
//   void dispose() {
//     if (isVideo) _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isError
//         ? const SizedBox.shrink()
//         : Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Stack(
//               alignment: Alignment.topRight,
//               children: [
//                 SizedBox(
//                   height: 100,
//                   width: 100,
//                   child: isLoading
//                       ? const Center(
//                           child: CircularProgressIndicator.adaptive())
//                       : isVideo && _controller.value.isInitialized
//                           ? Stack(
//                               alignment: Alignment.topLeft,
//                               children: [
//                                 VideoPlayer(_controller),
//                                 Container(
//                                   decoration: const BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.only(
//                                           bottomRight: Radius.circular(10))),
//                                   child: Icon(
//                                     Icons.play_circle,
//                                     color: Colors.black.withOpacity(0.6),
//                                   ),
//                                 )
//                               ],
//                             )
//                           : !isVideo
//                               ? isNetwork
//                                   ? isPdf
//                                       ? GestureDetector(
//                                           onTap: _showPDF,
//                                           child: Card(
//                                             child: Column(
//                                               children: [
//                                                 const Expanded(
//                                                   child: Icon(
//                                                     Icons.picture_as_pdf,
//                                                     size: 50,
//                                                   ),
//                                                 ),
//                                                 Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.center,
//                                                   children: [
//                                                     Text(doc.count.toString()),
//                                                     const SizedBox(
//                                                       width: 2,
//                                                     ),
//                                                     TranslateText(
//                                                         text: doc.count > 1
//                                                             ? 'pages'
//                                                             : 'page',
//                                                         styleText: StyleText.h6)
//                                                   ],
//                                                 )
//                                               ],
//                                             ),
//                                           ))
//                                       : GestureDetector(
//                                           onTap: () {
//                                             final imageProvider =
//                                                 CachedNetworkImageProvider(
//                                               widget.path,
//                                             );
//                                             showImageViewer(
//                                                 context, imageProvider,
//                                                 useSafeArea: true,
//                                                 doubleTapZoomable: true,
//                                                 backgroundColor: Colors.white,
//                                                 closeButtonColor:
//                                                     Theme.of(context)
//                                                         .colorScheme
//                                                         .primary);
//                                           },
//                                           child: CachedNetworkImage(
//                                             imageUrl: widget.path,
//                                             fit: BoxFit.cover,
//                                           ))
//                                   : isPdf
//                                       ? GestureDetector(
//                                           onTap: _showPDF,
//                                           child: Card(
//                                             child: Column(
//                                               children: [
//                                                 const Expanded(
//                                                   child: Icon(
//                                                     Icons.picture_as_pdf,
//                                                     size: 50,
//                                                   ),
//                                                 ),
//                                                 Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.center,
//                                                   children: [
//                                                     Text(doc.count.toString()),
//                                                     const SizedBox(
//                                                       width: 2,
//                                                     ),
//                                                     TranslateText(
//                                                         text: doc.count > 1
//                                                             ? 'pages'
//                                                             : 'page',
//                                                         styleText: StyleText.h6)
//                                                   ],
//                                                 )
//                                               ],
//                                             ),
//                                           ))
//                                       : GestureDetector(
//                                           onTap: () {
//                                             final imageProvider =
//                                                 Image.file(File(widget.path))
//                                                     .image;
//                                             showImageViewer(
//                                                 context, imageProvider,
//                                                 useSafeArea: true,
//                                                 doubleTapZoomable: true,
//                                                 backgroundColor: Colors.white,
//                                                 closeButtonColor:
//                                                     Theme.of(context)
//                                                         .colorScheme
//                                                         .primary);
//                                           },
//                                           child: Image.file(File(widget.path),
//                                               fit: BoxFit.cover))
//                               : Container(),
//                 ),
//                 if (widget.onRemove != null)
//                   GestureDetector(
//                     onTap: widget.onRemove,
//                     child: const Icon(
//                       Icons.delete_forever,
//                       color: Colors.red,
//                     ),
//                   )
//               ],
//             ),
//           );
//   }
//
//   _showPDF() {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => Scaffold(
//                 appBar: const CustomAppBar(
//                   title: '',
//                 ),
//                 body: PDFViewer(document: doc))));
//   }
// }
