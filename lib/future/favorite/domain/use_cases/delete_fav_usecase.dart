import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/favorite/data/repositories/fav_repository.dart';

@lazySingleton
class DeleteFavUseCase implements UseCases<String, String> {
  final FavRepository favRepository;

  DeleteFavUseCase(this.favRepository);
  @override
  Future<Either<Failures, String>> call(String favId) {
    return favRepository.removeFav(id: favId);
  }
}
