import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class MockInterceptor extends Interceptor {
  static const _jsonDir = 'assets/json/';
  static const _jsonExtension = '.json';

  @override
  Future onRequest(RequestOptions options, handler) async {
    var newDirectory = _jsonDir;
    if (options.headers['user_type'] != null) {
      newDirectory = '$newDirectory${options.headers['user_type']}/';
    }
    var resourcePath = newDirectory + options.path;
    print('sadasdasdasd$resourcePath');
    if (options.queryParameters['id'] != null) {
      resourcePath = '$resourcePath-${options.queryParameters['id']}';
    }
    // if (options.queryParameters['user_id'] != null) {
    //   resourcePath = '$resourcePath-${options.queryParameters['user_id']}';
    // }
    // if (options.queryParameters['user_type'] != null) {
    //   resourcePath = '$resourcePath-${options.queryParameters['user_type']}';
    // }
    // if (options.queryParameters['store_id'] != null) {
    //   resourcePath = '$resourcePath-${options.queryParameters['store_id']}';
    // }
    // if (options.queryParameters['category_id'] != null) {
    //   resourcePath = '$resourcePath-${options.queryParameters['category_id']}';
    // }
    // if (options.queryParameters['type'] != null) {
    //   resourcePath = '$resourcePath-${options.queryParameters['type']}';
    // }
    // if (options.queryParameters['page'] != null) {
    //   resourcePath = '$resourcePath-${options.queryParameters['page']}';
    // }
    // try {
    //   if (options.data['user_type'] != null) {
    //     resourcePath = '$resourcePath-${options.data['user_type']}';
    //   }
    // } catch (e) {
    //   print('$e');
    // }

    resourcePath = resourcePath + _jsonExtension;
    dynamic responseData;
    Response response;
    try {
      final data = await rootBundle.load(resourcePath);

      responseData = json.decode(
        utf8.decode(
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
        ),
      );
      response = Response(
        data: responseData,
        statusCode: 200,
        requestOptions: options,
      );
      return handler.resolve(response);
    } catch (e) {
      print('MockError---->$e');
      response = Response(
        data: responseData,
        statusCode: 404,
        requestOptions: options,
      );
      // return handler
      //     .reject(DioError(requestOptions: options, response: response));
      return handler.next(options);
    }
  }
}
