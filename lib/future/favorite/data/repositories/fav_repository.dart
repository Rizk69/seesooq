import 'package:dartz/dartz.dart';
import 'package:opensooq/future/favorite/data/model/fav_model.dart';

import '../../../../core/error/failures.dart';

abstract class FavRepository {
  Future<Either<Failures, FavModel>> getFav();
  Future<Either<Failures, String>> sendFav({required String id});
  Future<Either<Failures, String>> removeFav({required String id});
}
