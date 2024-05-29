import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:opensooq/app.dart';
import 'package:opensooq/core/service/local_notification_service.dart';
import 'package:opensooq/firebase_options.dart';
import 'package:opensooq/future/user_local_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

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
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(UserLocalModelAdapter());
  Hive.registerAdapter(UserDataModelAdapter());
  // Bloc.observer = MyBlocObserver();

  print('FirebaseMessaging: ${await FirebaseMessaging.instance.getToken()}');

  PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();
  try {
    await pusher.init(
      apiKey: '5b9aed07ae9caa868b10',
      cluster: 'ap1',
      onConnectionStateChange: (currentState, previousState) {
        print('State changed from $previousState to $currentState');
      },
      onError: (message, code, error) {
        print('Error: $message');
      },
      onSubscriptionSucceeded: (channelName, data) {
        print('Subscribed to $channelName');
      },
      onEvent: (event) {},
      onSubscriptionError: (message, error) {
        print('Subscription error: $message');
      },
      onDecryptionFailure: (event, reason) {
        print('Decryption failed: $reason');
      },
      onMemberAdded: (channelName, member) {
        print('Member added: $member');
      },
      onMemberRemoved: (channelName, member) {
        print('Member removed: $member');
      },
      // authEndpoint: "<Your Authendpoint>",
      // onAuthorizer: onAuthorizer
    );
    await pusher.subscribe(channelName: 'presence-chatbox');
    await pusher.connect();
  } catch (e) {
    print("ERROR: $e");
  }

  LocalNotificationService.preStart();

  FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    provisional: true,
    criticalAlert: true,
    sound: true,
  );
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('ar', 'JO'), Locale('en', 'US')],
        path: 'assets/translations',

        // <-- change the path of the translation files

        child: const MyApp()),
  );
}

//Locale('en', 'US'),
firebaseMessagingBackgroundHandler() {
  print('Handling a background message ');
}
