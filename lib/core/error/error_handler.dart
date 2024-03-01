import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:opensooq/core/error/failures.dart';

class ErrorHandler implements Exception {
  static Failures handleError(dynamic error) {
    if (error is DioException) {
      return _handleDioError(error);
    }
    return const DefaultFailure();
  }

  static Failures _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        break;
      case DioExceptionType.sendTimeout:
        break;
      case DioExceptionType.receiveTimeout:
        break;
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case ResponseCode.unauthorized:
            // check if the error is a map
            return error.response?.data is Map?
                ? AuthFailure(
                    error.response?.data['message'] ?? error.response?.data['error'],
                  )
                : AuthFailure(
                    jsonDecode(error.response?.data)['message'].toString(),
                  );
          default:
            return error.response?.data is Map?
                ? DefaultFailure(message: error.response?.data['message'], code: error.response?.data['code'])
                : DefaultFailure(message: error.response?.data, code: error.response?.statusCode);
        }

      default:
        return const DefaultFailure();
    }
    return const DefaultFailure();
  }
}

class ResponseCode {
  // API status codes
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no content
  static const int badRequest = 400; // failure, api rejected the requests
  static const int forbidden = 403; // failure, api rejected the requests
  static const int unauthorized = 401; // failure user is not authorised
  static const int notFound = 404;
  static const int internalServerError = 500;
}
