import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/fav_api.dart';

import '../model/fav_model.dart';

abstract class FavRemoteDataSource {
  Future<FavModel> getFav();
  Future<String> sendFav({required String id});
  Future<String> removeFav({required String id});
}

@LazySingleton(as: FavRemoteDataSource)
class FavRemoteDataSourceImpl implements FavRemoteDataSource {
  final FavApi api;
  FavRemoteDataSourceImpl({required this.api});
  @override
  Future<FavModel> getFav() async {
    return await api.getFav();
  }

  @override
  Future<String> sendFav({required String id}) async {
    return await api.sendFav(id: id);
  }

  @override
  Future<String> removeFav({required String id}) async {
    return await api.removeFav(id: id);
  }
}
