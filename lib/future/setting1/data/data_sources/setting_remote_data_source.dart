import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/setting_api.dart';
import 'package:opensooq/future/setting1/data/models/privacy_policy_model.dart';
import 'package:opensooq/future/setting1/data/models/reasons_for_deletion_model.dart';
import 'package:opensooq/future/setting1/data/models/terms_of_use_model.dart';

import '../models/edit_user_model.dart';

abstract class SettingRemoteDataSource {
  Future<EditUserModel> editUser({required String name, required String email});
  Future<PrivacyPolicyModel> privacyPolicy();
  Future<TermsOfUseModel> termsOfUse();
  Future<ReasonsForDeletionModel> reasonsForDeletion();

}

@LazySingleton(as: SettingRemoteDataSource)
class SettingRemoteDataSourceImpl implements SettingRemoteDataSource {
  final SettingApi api;

  SettingRemoteDataSourceImpl(this.api);

  @override
  Future<EditUserModel> editUser(
      {required String name, required String email}) async {
    return await api.editUser(body: {'name': name, 'email': email});
  }

  @override
  Future<PrivacyPolicyModel> privacyPolicy()async {
    return await api.privacyPolicy();

  }

  @override
  Future<ReasonsForDeletionModel> reasonsForDeletion()async {
    return await api.reasonsForDeletion();

  }

  @override
  Future<TermsOfUseModel> termsOfUse()async {
    return await api.termsOfUse();

  }
}
