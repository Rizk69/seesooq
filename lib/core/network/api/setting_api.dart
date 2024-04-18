import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/setting/data/models/edit_user_model.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';
import 'package:retrofit/retrofit.dart';

part 'setting_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class SettingApi {
  @factoryMethod
  factory SettingApi(Dio dio) = _SettingApi;

  @POST(EndPoint.editProfile)
  Future<EditUserModel> editUser({@Body() required Map<String, dynamic> body});
  @GET(EndPoint.privacyPolicy)
  Future<GeneralSettingModel> privacyPolicy();
  @GET(EndPoint.termsOfUse)
  Future<GeneralSettingModel> termsOfUse();
  @GET(EndPoint.reasonsForDeletion)
  Future<GeneralSettingModel> reasonsForDeletion();

  @GET(EndPoint.frequentlyAskQuestion)
  Future<GeneralSettingModel> getFrequentlyAskQuestion();
  @GET(EndPoint.contactUs)
  Future<GeneralSettingModel> getContactUs();
  @GET(EndPoint.aboutUs)
  Future<GeneralSettingModel> getAboutUs();
}
