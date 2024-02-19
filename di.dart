import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'lib/core/network/mock_interceptor.dart';
import 'lib/core/utils/navigator.dart';
import 'di.config.dart';

final sl = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() => sl.init();

// @module
// abstract class HiveModule {
//   @preResolve
//   void get initHive => Hive.init('hive');
//
//   @Named('user')
//   Future<Box<String>> get prefs => Hive.openBox<String>('cached');
// }

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  LogInterceptor getLogInterceptor() => LogInterceptor(
      request: true, requestBody: true, responseBody: true, error: true, responseHeader: false, requestHeader: true, logPrint: (object) {});

  @lazySingleton
  MockInterceptor getMockInterceptor() => MockInterceptor();

  @lazySingleton
  NavigationService getNavigationService() => NavigationService();

  @lazySingleton
  InternetConnectionChecker getInternetConnectionChecker() => InternetConnectionChecker();
}
