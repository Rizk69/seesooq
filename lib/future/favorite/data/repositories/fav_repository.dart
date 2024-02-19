import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/favorite/data/model/fav_model.dart';
import '../../../../core/error/error_handler.dart';
import '../../../../core/error/failures.dart';
import '../data_sorces/fav_remot_data_sorces.dart';

abstract class FavRepository {
  Future<Either<Failures, FavModel>> getFav();
  Future<Either<Failures, bool>> sendFav({required int id});
}

@LazySingleton(as: FavRepository)
class FavRepositoryImpl implements FavRepository {
  final FavRemoteDataSource _remoteDataSource;

  FavRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<Failures, FavModel>> getFav() async {
    try {
      final response = await _remoteDataSource.getFav();
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }

  @override
  Future<Either<Failures, bool>> sendFav({required int id}) async {
    try {
      final response = await _remoteDataSource.sendFav(id: id);
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }
}
