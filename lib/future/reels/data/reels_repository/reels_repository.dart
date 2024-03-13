import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/reels/data/data_source/reels_remote_data_source.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

abstract class ReelsRepository {
  Future<Either<Failures, List<ReelsModel>>> getReels();
  Future<Either<Failures, List<ReelsModel>>> getMyReels();
}

@LazySingleton(as: ReelsRepository)
class ReelsRepositoryImpl extends ReelsRepository {
  final ReelsRemoteDataSource remoteDataSource;

  ReelsRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failures, List<ReelsModel>>> getReels() async {
    return executeAndCatchError(() async => await remoteDataSource.getReels());
  }

  @override
  Future<Either<Failures, List<ReelsModel>>> getMyReels() async {
    return executeAndCatchError(() async => await remoteDataSource.getMyReels());
  }
}
