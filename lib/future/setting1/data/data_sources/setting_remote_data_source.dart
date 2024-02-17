import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/setting_api.dart';

import '../models/edit_user_model.dart';

abstract class SettingRemoteDataSource {
  Future<EditUserModel> editUser({required String name, required String email});
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
}
