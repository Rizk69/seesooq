import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/fav_api.dart';
import 'package:opensooq/future/favorite/data/model/fav_reels_model.dart';

import '../model/fav_model.dart';

abstract class FavRemoteDataSource {
  Future<FavModel> getFav();
  Future<FavReelsModel> getReelsFav();
  Future<String> sendFav({required String id});
  Future<String> removeFav({required String id});
  Future<String> removeFavReel({required String id});
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

  @override
  Future<FavReelsModel> getReelsFav() async {
    return await api.getReelsFav();
  }

  @override
  Future<String> removeFavReel({required String id}) async {
    // TODO: implement removeFavReel
    return await api.removeFavReel(id: id);
  }
}
