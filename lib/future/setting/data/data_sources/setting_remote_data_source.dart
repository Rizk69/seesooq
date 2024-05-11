import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/setting_api.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';
import 'package:opensooq/future/setting/data/models/general_statistic_model.dart';

import '../models/edit_user_model.dart';

abstract class SettingRemoteDataSource {
  Future<EditUserModel> editUser(
      {required String name, required String email, required String phone});
  Future<GeneralSettingModel> privacyPolicy();
  Future<GeneralSettingModel> termsOfUse();
  Future<GeneralSettingModel> reasonsForDeletion();
  Future<GeneralSettingModel> getFrequentlyAskQuestion();
  Future<GeneralSettingModel> getContactUs();
  Future<GeneralSettingModel> getAboutUs();
  Future<GeneralStatisticModel> getStatistic();
  Future<GeneralSettingModel> deleteAccount({required String reason});
}

@LazySingleton(as: SettingRemoteDataSource)
class SettingRemoteDataSourceImpl implements SettingRemoteDataSource {
  final SettingApi api;

  SettingRemoteDataSourceImpl(this.api);

  @override
  Future<EditUserModel> editUser(
      {required String name,
      required String email,
      required String phone}) async {
    return await api
        .editUser(body: {'name': name, 'email': email, 'phone': phone});
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
  Future<GeneralSettingModel> getAboutUs() async {
    return await api.getAboutUs();
  }

  @override
  Future<GeneralSettingModel> getContactUs() async {
    return await api.getContactUs();
  }

  @override
  Future<GeneralSettingModel> getFrequentlyAskQuestion() async {
    return await api.getFrequentlyAskQuestion();
  }

  @override
  Future<GeneralSettingModel> deleteAccount({required String reason}) async {
    return await api.deleteAccount(reason: reason);
  }

  @override
  Future<GeneralStatisticModel> getStatistic() async {
    return await api.getStatistic();
  }
}
