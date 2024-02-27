import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/favorite/data/data_sorces/fav_remot_data_sorces.dart';
import 'package:opensooq/future/favorite/data/model/fav_model.dart';
import 'package:opensooq/future/favorite/data/repositories/fav_repository.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

@LazySingleton(as: FavRepository)
class FavRepositoryImpl implements FavRepository {
  final FavRemoteDataSource _remoteDataSource;

  FavRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<Failures, FavModel>> getFav() async {
    return executeAndCatchError(() => _remoteDataSource.getFav());
  }

  @override
  Future<Either<Failures, String>> sendFav({required String id}) async {
    return executeAndCatchError(() => _remoteDataSource.sendFav(id: id));
  }

  @override
  Future<Either<Failures, String>> removeFav({required String id}) async {
    return executeAndCatchError(() => _remoteDataSource.removeFav(id: id));
  }
}
