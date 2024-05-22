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
