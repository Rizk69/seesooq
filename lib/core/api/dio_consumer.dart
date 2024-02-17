// import 'dart:convert';
// import 'dart:io';
//
// import 'package:dio/adapter.dart';
// import 'package:dio/dio.dart';
// import 'package:newprojectenv/core/api/api_consumer.dart';
// import 'package:newprojectenv/core/api/dio_interceptor.dart';
// import 'package:newprojectenv/core/api/end_point.dart';
// import 'package:newprojectenv/core/api/status_code.dart';
//
// class DioConsumer implements ApiConsumer {
//   final Dio client;
//
//   DioConsumer({required this.client}) {
//     (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//     client.options
//       ..baseUrl = EndPoint.baseUrl
//       ..responseType = ResponseType.plain
//       ..followRedirects = false
//       ..headers = {'Content-Type':'application/json'}
//       ..validateStatus = (status) {
//         return status! < StatusCode.internalServerError;
//       };
//     client.interceptors.add(di.sl<CustomInterceptors>());
//
//     client.interceptors.add(di.sl<LogInterceptor>());
//   }
//
//   dynamic _handlingResponseAsJson(Response response) {
//     return jsonDecode(response.data.toString());
//   }
//
//
// }
