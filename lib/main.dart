import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:opensooq/app.dart';
import 'package:opensooq/core/utils/bloc_observe.dart';
import 'package:opensooq/firebase_options.dart';
import 'package:opensooq/future/user_local_model.dart';
import 'package:path_provider/path_provider.dart';

import 'di.dart' as di;

Future<List<ImageFile>> pickImagesUsingImagePicker(bool allowMultiple) async {
  final picker = ImagePicker();
  final List<XFile> xFiles;
  if (allowMultiple) {
    xFiles = await picker.pickMultiImage();
  } else {
    xFiles = [];
    final xFile = await picker.pickImage(source: ImageSource.gallery, maxHeight: 1080, maxWidth: 1080);
    if (xFile != null) {
      xFiles.add(xFile);
    }
  }
  if (xFiles.isNotEmpty) {
    return xFiles.map<ImageFile>((e) => convertXFileToImageFile(e)).toList();
  }
  return [];
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.configureDependencies();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(UserLocalModelAdapter());
  Hive.registerAdapter(UserDataModelAdapter());
  Bloc.observer = MyBlocObserver();

  FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    provisional: false,
    sound: true,
  );

  print('${await FirebaseMessaging.instance.getToken()}');

  runApp(
    EasyLocalization(
        supportedLocales: const [ Locale('ar', 'JO')],
        path: 'assets/translations',

        // <-- change the path of the translation files

        child: const MyApp()),
  );
}
//Locale('en', 'US'),