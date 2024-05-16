import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/firebase_options.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

class LocalNotificationService {
  LocalNotificationService();

  static Future<void> setupInteractedMessage() async {
    FirebaseMessaging.instance.getInitialMessage().then((event) {
      if (event != null) {
        if (event.data['page'].toString().isNotEmpty) {
          var context = rootNavigatorKey.currentState!.context;
        }
      }
    });

    // Also handle any interaction when the app is in the background via a
    // Stream listener

    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      // FlutterAppBadger.updateBadgeCount(int.parse(event.data['badge']));
      // get badge count
      var context = rootNavigatorKey.currentState!.context;

      if (event.data['page'].toString().isNotEmpty) {}
    });
  }

  void subscriptionUser() {}

  static sendNotification() {
    flutterLocalNotificationsPlugin.show(
      1,
      'Call from Mike',
      'Calling...',
      const NotificationDetails(
        iOS: DarwinNotificationDetails(
          badgeNumber: 0,
        ),
        android: AndroidNotificationDetails(
          'high_importance_channel',
          'High Importance Notifications',
          channelDescription: 'This channel is used for important notifications.',
          importance: Importance.max,
          enableLights: true,
          channelAction: AndroidNotificationChannelAction.createIfNotExists,
          fullScreenIntent: true,
          styleInformation: BigTextStyleInformation(''),
          actions: [
            AndroidNotificationAction('2', 'Accept'),
            AndroidNotificationAction('1', 'Reject'),
          ],
          playSound: true,
        ),
      ),
    );
  }

  static sendCustomNotification(title, subtitle) {
    flutterLocalNotificationsPlugin.show(
      1,
      title,
      subtitle,
      const NotificationDetails(
        iOS: DarwinNotificationDetails(
          badgeNumber: 0,
          sound: 'lowbattery.wav',
        ),
      ),
    );
  }

  static cancelNotification() {
    flutterLocalNotificationsPlugin.cancelAll();
  }

  late AndroidNotificationChannel channel;

  static void preStart() async {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission()
        .whenComplete(() {});

    FirebaseMessaging.instance.onTokenRefresh.listen((event) {});

    await LocalNotificationService.setupInteractedMessage();
    setForegroundNotifications();
  }

  static Future<void> setForegroundNotifications() async {
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description: 'This channel is used for important notifications.',
      // description
      importance: Importance.max,
      enableLights: true,
      playSound: false,
      ledColor: Colors.red,
    );

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

    const DarwinInitializationSettings initializationSettingsIOS = DarwinInitializationSettings(
      requestAlertPermission: true,
      defaultPresentSound: true,
      defaultPresentAlert: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsIOS,
    );
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (v) {
        if (v.payload != null) {
          var event = json.decode(v.payload.toString());

          if (event['page'].toString().isNotEmpty) {
            var context = rootNavigatorKey.currentState!.context;
          }

          // ;
          // ;
          // final buildContext =
          //     di.sl<NavigationService>().navigatorKey.currentState!.context;
          //
          // // handleMessage();
          // var i = jsonDecode(v.payload!) as Map<String, dynamic>;
          //
          // Navigator.pushNamed(buildContext, i['page']);
        }
      },
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      handlingIncomingWork(message);

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              icon: android.smallIcon,
              enableLights: true,
              color: const Color.fromARGB(255, 255, 0, 0),
              channelShowBadge: true,
              fullScreenIntent: true,
              playSound: true,
            ),
            iOS: const DarwinNotificationDetails(
              badgeNumber: 2,
              presentSound: true,
              presentBadge: true,
              presentAlert: true,
            ),
          ),
          payload: jsonEncode(message.data),
        );
      }
    });
  }
}

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print('Handling a background message ${message.messageId}');
  // FlutterAppBadger.updateBadgeCount(1);
}

handlingIncomingWork(RemoteMessage message) {
  var context = rootNavigatorKey.currentState!.context;
  var data = (message.data);
  print('messagssss: ${message.data}');
  if (message.data.isNotEmpty) {
    if (data.containsKey('page')) {}
  } else if (message.notification?.title == 'Job Unassigned') {}
}
