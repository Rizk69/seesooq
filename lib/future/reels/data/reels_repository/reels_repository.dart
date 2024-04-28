import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/reels/data/data_source/reels_remote_data_source.dart';
import 'package:opensooq/future/reels/data/model/my_reels_model.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

abstract class ReelsRepository {
  Future<Either<Failures, ReelsModel>> getReels();
  Future<Either<Failures, MyReelsModel>> getMyReels();
  Future<Either<Failures, void>> viewReel({required String id});

  Future<Either<Failures, void>> createReel({
    required String video,
    required String description,
  });
  Future<Either<Failures, void>> deleteReel({required String id});
}

@LazySingleton(as: ReelsRepository)
class ReelsRepositoryImpl extends ReelsRepository {
  final ReelsRemoteDataSource remoteDataSource;

  ReelsRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failures, ReelsModel>> getReels() async {
    return executeAndCatchError(() async => await remoteDataSource.getReels());
  }

  @override
  Future<Either<Failures, MyReelsModel>> getMyReels() async {
    return executeAndCatchError(() async => await remoteDataSource.getMyReels());
  }

  @override
  Future<Either<Failures, void>> viewReel({required String id}) async {
    return executeAndCatchError(() async => await remoteDataSource.viewReel(id: id));
  }

  @override
  Future<Either<Failures, void>> createReel({required String video, required String description}) {
    return executeAndCatchError(() async => await remoteDataSource.createReel(video: video, description: description));
  }

  @override
  Future<Either<Failures, void>> deleteReel({required String id}) {
    return executeAndCatchError(() async => await remoteDataSource.deleteReel(id: id));
  }
}
