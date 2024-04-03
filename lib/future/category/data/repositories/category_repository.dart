import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/error_handler.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/category/data/data_sources/category_remote_data_source.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

abstract class CategoryRepository {
  Future<Either<Failures, CategoryModel>> getCategories();

  Future<Either<Failures, List<CategoryDataModel>>> getDetailsCategories({required String categoryId});

  Future<Either<Failures, AdvertisementModel>> getAdvertisementCategory({required String subCategoryId, required int page});
  Future<Either<Failures, AttributesAdsModel>> getAttributesByFilter({required String subCategoryId});
  Future<Either<Failures, AttributesAdsModel>> sendFilter(
      {required String subCategoryId, required Map<String, dynamic> filter, required String fromPrice, required String toPrice});
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
    return executeAndCatchError(() async {
      final response = await _remoteDataSource.getDetailsCategories(categoryId: categoryId);
      return response.data?.category ?? [];
    });
  }

  @override
  Future<Either<Failures, AdvertisementModel>> getAdvertisementCategory({required String subCategoryId, required int page}) {
    return executeAndCatchError(() async => await _remoteDataSource.getAdvertisementCategory(subCategoryId: subCategoryId, page: page));
  }

  @override
  Future<Either<Failures, AttributesAdsModel>> getAttributesByFilter({required String subCategoryId}) {
    return executeAndCatchError(() async => await _remoteDataSource.getAttributesByFilter(subCategoryId: subCategoryId));
  }

  @override
  Future<Either<Failures, AttributesAdsModel>> sendFilter(
      {required String subCategoryId, required Map<String, dynamic> filter, required String fromPrice, required String toPrice}) {
    return executeAndCatchError(() async => await _remoteDataSource.sendFilter(
          subCategoryId: subCategoryId,
          filter: filter,
          fromPrice: fromPrice,
          toPrice: toPrice,
        ));
  }
}
