// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:url_launcher/url_launcher_string.dart';
//
// class CustomViewOnlyMapWidget extends StatefulWidget {
//   final LatLng latLng;
//   const CustomViewOnlyMapWidget(this.latLng, {Key? key}) : super(key: key);
//
//   @override
//   State<CustomViewOnlyMapWidget> createState() =>
//       _CustomViewOnlyMapWidgetState();
// }
//
// class _CustomViewOnlyMapWidgetState extends State<CustomViewOnlyMapWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return GoogleMap(
//       zoomControlsEnabled: false,
//       compassEnabled: false,
//       mapToolbarEnabled: false,
//       myLocationButtonEnabled: false,
//       onTap: (v) async {
//         String url =
//             'https://www.google.com/maps/dir/?api=1&destination=${widget.latLng.latitude},${widget.latLng.longitude}&mode=d';
//         if (!await launchUrlString(
//           url,
//           mode: LaunchMode.externalApplication,
//         )) {
//           throw 'Could not launch $url';
//         }
//       },
//       onCameraMoveStarted: null,
//       onCameraMove: null,
//       onCameraIdle: null,
//       rotateGesturesEnabled: false,
//       scrollGesturesEnabled: false,
//       markers: {Marker(markerId: const MarkerId(''), position: widget.latLng)},
//       initialCameraPosition: CameraPosition(zoom: 15, target: widget.latLng),
//     );
//   }
// }
