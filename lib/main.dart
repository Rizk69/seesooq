import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:opensooq/app.dart';
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
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform, name: 'SeeSooq');
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(UserLocalModelAdapter());
  Hive.registerAdapter(UserDataModelAdapter());
  Bloc.observer = MyBlocObserver();
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 10),
    minimumFetchInterval: const Duration(seconds: 1),
  ));

   // await remoteConfig.fetchAndActivate();
  print('welcome: ${remoteConfig.getString('update_app')}');

  // final _liveActivitiesPlugin = LiveActivities();
  // StreamSubscription<UrlSchemeData>? urlSchemeSubscription;
  //
  // _liveActivitiesPlugin.init(appGroupId: "group.com.seesooq.seesooq");
  // final Map<String, dynamic> activityModel = {
  //   'name': 'Margherita',
  //   'ingredient': 'tomato, mozzarella, basil',
  //   'quantity': 1,
  // };
  // _liveActivitiesPlugin.areActivitiesEnabled();
  // _liveActivitiesPlugin.createActivity(activityModel);
  // _liveActivitiesPlugin.areActivitiesEnabled();
  // // send data to the activity from the host app
  //
  // await DynamicLinkHandler.createLink('seesooq', 'dsadsad', 'facebook');
  // print(await FirebaseDynamicLink.buildShortLink());
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'JO')],
        path: 'assets/translations',

        // <-- change the path of the translation files

        child: const MyApp()),
  );
}

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}
