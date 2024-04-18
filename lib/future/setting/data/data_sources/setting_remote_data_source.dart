import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/setting_api.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';

import '../models/edit_user_model.dart';

abstract class SettingRemoteDataSource {
  Future<EditUserModel> editUser({required String name, required String email});
  Future<GeneralSettingModel> privacyPolicy();
  Future<GeneralSettingModel> termsOfUse();
  Future<GeneralSettingModel> reasonsForDeletion();
  Future<GeneralSettingModel> getFrequentlyAskQuestion();
  Future<GeneralSettingModel> getContactUs();
  Future<GeneralSettingModel> getAboutUs();
}

@LazySingleton(as: SettingRemoteDataSource)
class SettingRemoteDataSourceImpl implements SettingRemoteDataSource {
  final SettingApi api;

  SettingRemoteDataSourceImpl(this.api);

  @override
  Future<EditUserModel> editUser({required String name, required String email}) async {
    return await api.editUser(body: {'name': name, 'email': email});
  }

  @override
  Future<GeneralSettingModel> privacyPolicy() async {
    return await api.privacyPolicy();
  }

  @override
  Future<GeneralSettingModel> reasonsForDeletion() async {
    return await api.reasonsForDeletion();
  }

  @override
  Future<GeneralSettingModel> termsOfUse() async {
    return await api.termsOfUse();
  }

  @override
  Future<GeneralSettingModel> getAboutUs() {
    // TODO: implement getAboutUs
    throw UnimplementedError();
  }

  @override
  Future<GeneralSettingModel> getContactUs() {
    // TODO: implement getContactUs
    throw UnimplementedError();
  }

  @override
  Future<GeneralSettingModel> getFrequentlyAskQuestion() {
    // TODO: implement getFrequentlyAskQuestion
    throw UnimplementedError();
  }
}
