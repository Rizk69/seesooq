import 'package:injectable/injectable.dart';
import 'package:opensooq/core/utils/cache_helper.dart';
import 'package:opensooq/future/user_local_model.dart';

abstract class HomeUserLocalDataSource {
  Future<int> logout();
}

@LazySingleton(as: HomeUserLocalDataSource)
class HomeUserLocalDataSourceImpl implements HomeUserLocalDataSource {
  final CacheHelper cacheHelper;

  HomeUserLocalDataSourceImpl(this.cacheHelper);

  @override
  Future<int> logout() async {
    final response = await cacheHelper.hiveClearData<UserLocalModel>();

    return response;
  }
}
