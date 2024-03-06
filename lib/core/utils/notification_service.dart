import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/navigator.dart';
import 'package:opensooq/di.dart' as di;

FlutterLocalNotificationsPlugin localNotificationService = FlutterLocalNotificationsPlugin();

Future<void> handleMessage(Map<String, dynamic> data) async {
  final buildContext = di.sl<NavigationService>().navigatorKey.currentState!.context;
  final navigator = Navigator.of(buildContext);
  if (data['type_user'] != null && data['type_user'].isNotEmpty) {
    if (true) {
      // await ProfileCubit.get(buildContext).selectUserType(
      //   getUserTypeFromString(data['type_user']),
      //   appCubit,
      //   LocaleCubit.get(buildContext),
      // );
    }
  }
  if (data['type'] == 'chat') {
    final jsonData = jsonDecode(data['user']);
    navigator.pushNamed(Routes.chatPage, arguments: types.User(id: jsonData['id'].toString(), firstName: jsonData['firstName'].toString()));
  } else if (data['type'] == 'notification') {
    navigator.pushNamed(Routes.notification);
  } else if (data['type'] == 'seller' && data['id'] != null) {
    navigator.pushNamed(Routes.addLocationUser, arguments: int.tryParse(data['id']));
  } else if (data['type'] == 'product' && data['id'] != null) {
    navigator.pushNamed(Routes.addLocationUser, arguments: int.tryParse(data['id']));
  } else if (data['type'] == 'order' && data['id'] != null) {
    navigator.pushNamed(Routes.addLocationUser, arguments: {'id': int.tryParse(data['id']), "isHistory": false});
  }
}

class LocalNotificationService {
  LocalNotificationService();

  static Future<void> setupInteractedMessage() async {
    FirebaseMessaging.instance.getInitialMessage().then((value) {
      if (value != null) {
        handleMessage(value.data);
      }
    });

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      handleMessage(event.data);
    });
  }

  void subscriptionUser() {}
  late AndroidNotificationChannel channel;

  static void preStart() async {
    FirebaseMessaging.instance.onTokenRefresh.listen((event) {});
    LocalNotificationService.setupInteractedMessage();
    setForegroundNotifications();
    print('FCM Token test : ${await FirebaseMessaging.instance.getToken()}');
    print(await FirebaseMessaging.instance.getToken());
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
      description: 'This channel is used for important notifications.', // description
      importance: Importance.max,
    );

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

    const DarwinInitializationSettings initializationSettingsIOS = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsIOS, macOS: initializationSettingsIOS);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings, onDidReceiveNotificationResponse: (v) {
      if (v.payload != null) {
        handleMessage(jsonDecode(v.payload!) as Map<String, dynamic>);
      }
    });

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

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
              ),
            ),
            payload: jsonEncode(message.data));
      }
    });
  }
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
}
