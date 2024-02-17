import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:retrofit/retrofit.dart';
import '../../../future/setting1/data/models/edit_user_model.dart';
part 'setting_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class SettingApi {
  @factoryMethod
  factory SettingApi(Dio dio) = _SettingApi;

  @POST(EndPoint.editProfile)
  Future<EditUserModel> editUser({@Body() required Map<String,dynamic> body});
}
