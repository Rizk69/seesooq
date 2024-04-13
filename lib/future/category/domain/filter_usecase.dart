import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart';

@lazySingleton
class FilterUseCase implements UseCases<AdvertisementModel, String> {
  final CategoryRepo categoryRepo;

  FilterUseCase(this.categoryRepo);
  @override
  Future<Either<Failures, AdvertisementModel?>> call(String params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class FilterParams extends Equatable {
  final String subCategoryId;
  final Map<String, dynamic> filter;
  final String fromPrice;
  final String toPrice;
  final int page;

  const FilterParams({required this.subCategoryId, required this.filter, required this.fromPrice, required this.toPrice, required this.page});

  @override
  // TODO: implement props
  List<Object?> get props => [subCategoryId, filter, fromPrice, toPrice, page];
}
