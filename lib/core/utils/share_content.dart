// import 'dart:io';
// import 'dart:math';
//
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;
// import 'package:path_provider/path_provider.dart';
// import 'package:share_plus/share_plus.dart';
//
// import '../../app.dart';
//
// void onShare(String text, {String? subject}) async {
//   final context = scaffoldMessengerKey.currentContext!;
//   final box = context.findRenderObject() as RenderBox?;
//
//   await Share.share(
//     text,
//     subject: subject,
//     sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
//   );
// }
//
// void onShareWithFileOrImage(String text,
//     {String? subject, required List<String> files}) async {
//   final context = scaffoldMessengerKey.currentContext!;
//   final box = context.findRenderObject() as RenderBox?;
//
//   await Share.shareXFiles(
//     files.map((file) => XFile(file)).toList(),
//     text: text,
//     subject: subject,
//     sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
//   );
// }
//
// Future<File> urlToFile(String imageUrl) async {
//   var rng = Random();
//   Directory tempDir = await getTemporaryDirectory();
//   String tempPath = tempDir.path;
//   File file = File('$tempPath${rng.nextInt(100)}.png');
//   http.Response response = await http.get(Uri.parse(imageUrl));
//   await file.writeAsBytes(response.bodyBytes);
//   return file;
// }
//
// void showDownloadProgress(received, total) {
//   if (total != -1) {
//     print((received / total * 100).toStringAsFixed(0) + "%");
//   }
// }
