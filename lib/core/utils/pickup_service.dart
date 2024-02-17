import 'package:file_picker/file_picker.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:opensooq/core/utils/file_size_checker.dart';

class PickFilesService {
  static Future<void> getImageFromPhone({required Function(XFile?) onPicked}) async {
    final ImagePicker picker = ImagePicker();
    try {
      final XFile? image = await picker.pickImage(
        imageQuality: 30,
        requestFullMetadata: true,
        source: ImageSource.camera,
        maxHeight: 1920,
        maxWidth: 1080,
        preferredCameraDevice: CameraDevice.rear,
      );
      if (image != null) {
        onPicked(image);
      } else {
        // showCustomErrorSnackBar('errorAddingFile');
      }
    } catch (e) {
      EasyLoading.showError('the Image is Failed to Upload');
    }
  }

  static Future<void> getMultiImageFromPhone({required Function(List<XFile>) onPicked}) async {
    final ImagePicker picker = ImagePicker();
    try {
      final List<XFile> images = await picker.pickMultiImage(imageQuality: 90);
      onPicked(images);
    } catch (e) {
      // showCustomErrorSnackBar('enableStoragePermissions');
    }
  }

  static Future<void> getVideoFromPhone({required Function(XFile) onPicked}) async {
    final ImagePicker picker = ImagePicker();
    try {
      final XFile? video = await picker.pickVideo(source: ImageSource.gallery);
      if (video != null) {
        final isLarge = await checkLargeFile(video.path);
        if (isLarge) {
          return;
        }
        onPicked(video);
      } else {
        // showCustomErrorSnackBar('errorAddingFile');
      }
    } catch (e) {
      // showCustomErrorSnackBar('enableStoragePermissions');
    }
  }

  static Future<void> getFilesFromPhone({required Function(List<String>) onPicked, required List<String> allowedExtensions}) async {
    print('sajdhjksahdjkhjksahdjksa');
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: allowedExtensions,
      );
      List<String> filePaths = [];
      if (result != null && result.files.isNotEmpty) {
        for (var file in result.files) {
          if (file.path != null) {
            if (await checkLargeFile(file.path!)) {
              continue;
            }
            filePaths.add(file.path!);
          }
        }
        onPicked(filePaths);
      } else {
        // showCustomErrorSnackBar('errorAddingFile');
      }
    } catch (e) {
      // showCustomErrorSnackBar('enableStoragePermissions');
    }
  }
}
