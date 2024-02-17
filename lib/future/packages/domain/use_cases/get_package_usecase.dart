import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasess_shared.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/packages/data/models/packages_model.dart';
import 'package:opensooq/future/packages/domain/repositories/packages_repo.dart';

@lazySingleton
class GetPackagesUseCase implements UseCases<PackagesModel, NoParams> {
  final PackagesRepository packagesRepository;

  GetPackagesUseCase({required this.packagesRepository});

  @override
  Future<Either<Failures, PackagesModel>> call(NoParams params) {
    return packagesRepository.getPackages();
  }
}
