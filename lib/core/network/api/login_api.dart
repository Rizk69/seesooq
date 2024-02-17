import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/login/data/models/change_password_model.dart';
import 'package:opensooq/future/login/data/models/forget_password_model.dart';
import 'package:opensooq/future/login/data/models/login_model.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class LoginApi {
  @factoryMethod
  factory LoginApi(
    Dio dio,
  ) = _LoginApi;

  @POST(EndPoint.loginUser)
  Future<LoginModel> loginUser({
    @Body() required Map<String, dynamic> body,
  });
  @POST(EndPoint.forgetPassword)
  Future<ForGetPasswordModel> forGetPassword({
    @Body() required Map<String, dynamic> body,
  });
  @POST(EndPoint.verifyOtpRestorePassword)
  Future<ForGetPasswordModel> verifyOtpRestorePassword({
    @Body() required Map<String, dynamic> body,
  });
  @POST(EndPoint.changePassword)
  Future<ChangePasswordModel> changePasswordUser({
    @Body() required Map<String, dynamic> body,
  });
}
