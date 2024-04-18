import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/setting1/data/models/edit_user_model.dart';
import 'package:opensooq/future/setting1/data/models/privacy_policy_model.dart';
import 'package:opensooq/future/setting1/data/models/reasons_for_deletion_model.dart';
import 'package:opensooq/future/setting1/data/models/terms_of_use_model.dart';
import 'package:retrofit/retrofit.dart';
part 'setting_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class SettingApi {
  @factoryMethod
  factory SettingApi(Dio dio) = _SettingApi;

  @POST(EndPoint.editProfile)
  Future<EditUserModel> editUser({@Body() required Map<String,dynamic> body});
  @GET(EndPoint.privacyPolicy)
  Future<PrivacyPolicyModel> privacyPolicy();
  @GET(EndPoint.termsOfUse)
  Future<TermsOfUseModel> termsOfUse();
  @GET(EndPoint.reasonsForDeletion)
  Future<ReasonsForDeletionModel> reasonsForDeletion();

}
