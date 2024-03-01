import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

import '../../../../core/error/failures.dart';
import '../data_source/follow_remot_data_sorces.dart';
import '../model/followers_model.dart';

abstract class FollowRepository {
  Future<Either<Failures, FollowersModel>> getFollowers();
  Future<Either<Failures, FollowersModel>> getFollowings();
  Future<Either<Failures, void>> makeFollow({required int id});
  Future<Either<Failures, void>> removeFollower({required int id});
  Future<Either<Failures, void>> removeFollowing({required int id});
}

@LazySingleton(as: FollowRepository)
class FollowRepositoryImpl implements FollowRepository {
  final FollowRemoteDataSource _remoteDataSource;

  FollowRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failures, FollowersModel>> getFollowers() async {
    return executeAndCatchError(() async {
      final result = await _remoteDataSource.getFollowers();
      // add 6 users to the list
      List<Data> users = [
        Data(id: 1, name: 'yazan turk', email: '', phone: '', image: '', isFollow: true),
        Data(id: 2, name: 'Ahmed Bassam', email: '', phone: '', image: '', isFollow: true),
        Data(id: 3, name: 'Suha mohammad', email: '', phone: '', image: '', isFollow: true),
        Data(id: 4, name: 'aya Ali', email: '', phone: '', image: '', isFollow: true),
        Data(id: 5, name: 'Adel turk', email: '', phone: '', image: '', isFollow: true),
      ];
      result.data?.addAll(users);
      return (result);
    });
  }

  @override
  Future<Either<Failures, FollowersModel>> getFollowings() async {
    return executeAndCatchError(() async => await _remoteDataSource.getFollowings());
  }

  @override
  Future<Either<Failures, void>> makeFollow({required int id}) async {
    return executeAndCatchError(() async => await _remoteDataSource.makeFollow(id: id));
  }

  @override
  Future<Either<Failures, void>> removeFollower({required int id}) async {
    return executeAndCatchError(() async => await _remoteDataSource.removeFollower(id: id));
  }

  @override
  Future<Either<Failures, void>> removeFollowing({required int id}) async {
    return executeAndCatchError(() async => await _remoteDataSource.removeFollowing(id: id));
  }
}
