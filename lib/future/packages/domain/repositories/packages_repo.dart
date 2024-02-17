import 'package:dartz/dartz.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/packages/data/models/packages_model.dart';

abstract class PackagesRepository {
  Future<Either<Failures, PackagesModel>> getPackages();
}
