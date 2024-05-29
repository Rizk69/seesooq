import 'package:injectable/injectable.dart';
import 'package:opensooq/core/utils/cache_helper.dart';
import 'package:opensooq/future/user_local_model.dart';

abstract class SettingLocalDataSource {
  Future<void> saveUserToLocal({required UserLocalModel userLocalModel});
  Future<UserLocalModel?> getUserToLocal();
}

@LazySingleton(as: SettingLocalDataSource)
class SettingLocalDataSourceImpl implements SettingLocalDataSource {
  final CacheHelper helper;

  SettingLocalDataSourceImpl(this.helper);

  @override
  Future<void> saveUserToLocal({required UserLocalModel userLocalModel}) async {
    await helper.hivePutData<UserLocalModel>(userLocalModel, 'user');
  }

  @override
  Future<UserLocalModel?> getUserToLocal() async {
    return await helper.hiveGetDataById<UserLocalModel>(0);
  }
}
