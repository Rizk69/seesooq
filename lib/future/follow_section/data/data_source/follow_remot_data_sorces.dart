import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/follow_api.dart';

import '../model/followers_model.dart';

abstract class FollowRemoteDataSource {
  Future<FollowersModel> getFollowers();
  Future<FollowersModel> getFollowings();
  Future<void> makeFollow({required int id});
  Future<void> removeFollower({required int id});
  Future<void> removeFollowing({required int id});

}

@LazySingleton(as: FollowRemoteDataSource)
class FollowRemoteDataSourceImpl implements FollowRemoteDataSource {
  final FollowApi api;
  FollowRemoteDataSourceImpl({required this.api});

  @override
  Future<FollowersModel> getFollowers() async{
    return await api.getFollowers();

  }

  @override
  Future<FollowersModel> getFollowings()async {
    return await api.getFollowings();
  }

  @override
  Future<void> makeFollow({required int id})async {
    return await api.makeFollow(idMF: id);

  }

  @override
  Future<void> removeFollower({required int id}) async{
    return await api.removeFollower(idRFR: id);

  }

  @override
  Future<void> removeFollowing({required int id}) async{
    return await api.removeFollowing(idRFG: id);

  }

}
