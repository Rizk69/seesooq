import 'dart:io';
import 'dart:math';


import 'app_constants.dart';

Future<bool> checkLargeFile(String filepath) async {
  var file = File(filepath);
  int bytes = await file.length();
  if (bytes <= 0) return false;
  var i = (log(bytes) / log(1024)).floor();
  bool isLarge = (bytes / pow(1024, i)) > AppConstants.maximumUploadSizeInMB;
  if (isLarge) {
    // showCustomErrorSnackBar('largeFile');
  }
  return isLarge;
}
