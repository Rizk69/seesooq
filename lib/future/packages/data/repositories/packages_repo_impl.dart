import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/packages/data/data_sources/packages_remote_data_source.dart';
import 'package:opensooq/future/packages/data/models/packages_model.dart';
import 'package:opensooq/future/packages/domain/repositories/packages_repo.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

@LazySingleton(as: PackagesRepository)
class PackagesRepositoryImpl implements PackagesRepository {
  final PackagesRemoteDataSource packagesRemoteDataSource;

  PackagesRepositoryImpl({
    required this.packagesRemoteDataSource,
  });

  @override
  Future<Either<Failures, PackagesModel>> getPackages() async {
    return executeAndCatchError(() => packagesRemoteDataSource.getPackages());
  }
}
