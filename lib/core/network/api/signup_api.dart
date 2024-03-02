import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/login/data/models/login_model.dart';
import 'package:opensooq/future/signup/data/models/sign_up_model.dart';
import 'package:retrofit/retrofit.dart';

part 'signup_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class SignupApi {
  @factoryMethod
  factory SignupApi(
    Dio dio,
  ) = _SignupApi;

  @POST(EndPoint.signUpUser)
  Future<SignUpModel> signUpUser({
    @Body() required Map<String, dynamic> body,
  });
  @POST(EndPoint.verifyOtp)
  Future<LoginModel> verifyOtp({
    @Body() required Map<String, dynamic> body,
  });
}
