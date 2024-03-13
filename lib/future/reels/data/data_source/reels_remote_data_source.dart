import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/reels_api.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';

abstract class ReelsRemoteDataSource {
  Future<List<ReelsModel>> getReels();
  Future<List<ReelsModel>> getMyReels();
}

@LazySingleton(as: ReelsRemoteDataSource)
class ReelsRemoteDataSourceImpl extends ReelsRemoteDataSource {
  final ReelsApi api;

  ReelsRemoteDataSourceImpl(this.api);
  @override
  Future<List<ReelsModel>> getReels() async {
    return await api.getReels();
  }

  @override
  Future<List<ReelsModel>> getMyReels() async {
    return await api.getMyReels();
  }
}
