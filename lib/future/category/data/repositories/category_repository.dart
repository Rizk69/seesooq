import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/error_handler.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/category/data/data_sources/category_remote_data_source.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

abstract class CategoryRepository {
  Future<Either<Failures, CategoryModel>> getCategories();

  Future<Either<Failures, List<CategoryDataModel>>> getDetailsCategories({required String categoryId});

  Future<Either<Failures, AdvertisementModel>> getAdvertisementCategory({required String subCategoryId, required int page});
}

@LazySingleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource _remoteDataSource;

  CategoryRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failures, CategoryModel>> getCategories() async {
    try {
      final response = await _remoteDataSource.getCategories();
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }

  @override
  Future<Either<Failures, List<CategoryDataModel>>> getDetailsCategories({required String categoryId}) async {
    try {
      final response = await _remoteDataSource.getDetailsCategories(
        categoryId: categoryId,
      );
      return Right(response.data?.category ?? []);
    } on DioException catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }

  @override
  Future<Either<Failures, AdvertisementModel>> getAdvertisementCategory({required String subCategoryId, required int page}) {
    return executeAndCatchError(
        () async => await _remoteDataSource.getAdvertisementCategory(subCategoryId: subCategoryId, page: page).then((value) => value));
  }
}
