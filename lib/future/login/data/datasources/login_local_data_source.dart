import 'package:injectable/injectable.dart';
import 'package:opensooq/core/utils/cache_helper.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';
import 'package:opensooq/future/user_local_model.dart';

abstract class LoginLocalDataSource {
  Future<void> cacheUserModel({required UserLocalModel userLocalModel});
  Future<UserLocalModel?> getUserModel();
  Future<void> deleteUserLocalModel();
}

@LazySingleton(as: LoginLocalDataSource)
class LoginLocalDataSourceImpl implements LoginLocalDataSource {
  final CacheHelper cacheHelper;
  LoginLocalDataSourceImpl(this.cacheHelper);
  @override
  Future<void> cacheUserModel({required UserLocalModel userLocalModel}) async {
    executeAndCatchError(() async {
      await cacheHelper.hivePutData<UserLocalModel>(userLocalModel);
    });
  }

  @override
  Future<UserLocalModel?> getUserModel() async {
    final response = await cacheHelper.hiveGetDataById<UserLocalModel>(0);
    print('UserLocalModel Fetched  ${response?.user?.id}');
    return response;
  }

  @override
  Future<void> deleteUserLocalModel() async {
    await cacheHelper.hiveClearData<UserLocalModel>();
  }
}
