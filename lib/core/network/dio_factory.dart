import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../api/dio_interceptor.dart';
import '../api/end_point.dart';
import 'mock_interceptor.dart';

@module
abstract class DioFactory {
  DioFactory();

  @lazySingleton
  Dio getDio(CustomInterceptors customInterceptors, LogInterceptor logInterceptor, MockInterceptor mockInterceptor) {
    final client = Dio();
    // (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (HttpClient client) {
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    //   return client;
    // };
    client.options
      ..baseUrl = EndPoint.baseUrl
      ..connectTimeout = const Duration(seconds: 30)
      ..receiveTimeout = const Duration(milliseconds: 30000)
      ..responseType = ResponseType.plain
      ..headers = {
        "App-Language": "en",
        // add bearer token here
      }
      //
      ..followRedirects = false
      ..headers = {'Content-Type': 'application/json'};
    client.interceptors.addAll([
      customInterceptors,
      logInterceptor,
      mockInterceptor,
      if (kDebugMode)
        PrettyDioLogger(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
    ]);
    return client;
  }
}
