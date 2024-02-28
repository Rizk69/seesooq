import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/error_handler.dart';
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
    try {
      final response = await _remoteDataSource.getFollowers();
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }

  @override
  Future<Either<Failures, FollowersModel>> getFollowings() async {
    try {
      final response = await _remoteDataSource.getFollowings();
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }

  @override
  Future<Either<Failures, void>> makeFollow({required int id}) async {
    try {
      final response = await _remoteDataSource.makeFollow(id: id);
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }

  @override
  Future<Either<Failures, void>> removeFollower({required int id}) async {
    try {
      final response = await _remoteDataSource.removeFollower(id: id);
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }

  @override
  Future<Either<Failures, void>> removeFollowing({required int id}) async {
    try {
      final response = await _remoteDataSource.removeFollowing(id: id);
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }
}
