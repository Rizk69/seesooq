import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasess_shared.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/favorite/data/model/fav_model.dart';
import 'package:opensooq/future/favorite/data/repositories/fav_repository.dart';

@lazySingleton
class FavUseCase implements UseCases<FavModel, NoParams> {
  final FavRepository favRepository;

  FavUseCase(this.favRepository);
  @override
  Future<Either<Failures, FavModel?>> call(NoParams params) {
    return favRepository.getFav();
  }
}
