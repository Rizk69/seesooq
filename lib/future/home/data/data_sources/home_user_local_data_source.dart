import 'package:injectable/injectable.dart';
import 'package:opensooq/core/utils/cache_helper.dart';
import 'package:opensooq/future/user_local_model.dart';

abstract class HomeUserLocalDataSource {
  Future<UserLocalModel> getUserLocal();
}

@LazySingleton(as: HomeUserLocalDataSource)
class HomeUserLocalDataSourceImpl implements HomeUserLocalDataSource {
  final CacheHelper cacheHelper;

  HomeUserLocalDataSourceImpl(this.cacheHelper);

  @override
  Future<UserLocalModel> getUserLocal() async {
    final response = await cacheHelper.hiveGetDataById<UserLocalModel>(0);

    return response ?? UserLocalModel();
  }
}
