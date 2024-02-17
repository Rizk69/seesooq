// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:easy_image_viewer/easy_image_viewer.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:mime/mime.dart';
// import 'package:video_player/video_player.dart';
//
// import '../utils/cache_network_image.dart';
//
// class GalleryItemWidget extends StatefulWidget {
//   final String path;
//
//   const GalleryItemWidget(this.path, {Key? key}) : super(key: key);
//
//   @override
//   State<GalleryItemWidget> createState() => _GalleryItemWidgetState();
// }
//
// class _GalleryItemWidgetState extends State<GalleryItemWidget> {
//   late FlickManager _flickManager;
//   late bool isVideo;
//   late bool isNetwork;
//   bool isLoading = false;
//
//   @override
//   void initState() {
//     isNetwork = widget.path.contains('http');
//     String? mimeStr = lookupMimeType(widget.path);
//     var fileType = mimeStr?.split('/');
//     isVideo = fileType?.first == 'video';
//     super.initState();
//     if (isVideo) initVideo();
//   }
//
//   initVideo() {
//     _flickManager = FlickManager(
//         videoPlayerController: VideoPlayerController.network(widget.path),
//         autoPlay: false);
//   }
//
//   @override
//   void dispose() {
//     if (isVideo) _flickManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: Container(
//         clipBehavior: Clip.antiAlias,
//         decoration: BoxDecoration(
//           border: Border.all(
//               color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
//               strokeAlign: StrokeAlign.outside),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: isLoading
//             ? const Center(child: CircularProgressIndicator.adaptive())
//             : isVideo
//                 ? FlickVideoPlayer(
//                   flickManager: _flickManager,
//                   wakelockEnabled: false,
//                   wakelockEnabledFullscreen: false,
//                   flickVideoWithControls: const FlickVideoWithControls(
//                     controls: FlickPortraitControls(),
//                     backgroundColor: Colors.white,
//                   ),
//                 )
//                 : GestureDetector(
//                     onTap: () {
//                       final imageProvider = CachedNetworkImageProvider(
//                         widget.path,
//                       );
//                       showImageViewer(context, imageProvider,
//                           useSafeArea: true,
//                           doubleTapZoomable: true,
//                           backgroundColor: Colors.white,
//                           closeButtonColor:
//                               Theme.of(context).colorScheme.primary);
//                     },
//                     child: CacheNetworkImageApp(
//                       urlImage: widget.path,
//                       fit: BoxFit.fitHeight,
//                     ),
//                   ),
//       ),
//     );
//   }
// }
