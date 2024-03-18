import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/network/network_info.dart';
import 'package:opensooq/future/category_product/data/data_sources/category_remote_data_source.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/data/models/attributes_form.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

import '../models/brand_ads_model.dart';

abstract class CategoryRepo {
  Future<Either<Failures, List<CategoryDataModel>>> getCategory();

  Future<Either<Failures, AttributesAdsModel>> getAttributesForAds(
      {required String subCategory});
  Future<Either<Failures, void>> createAds(
      {required AttributesForm attributesForm});
  Future<Either<Failures, BrandAdsModel>> getBrands(
      {required String subCategory});
}

@LazySingleton(as: CategoryRepo)
class CategoryRepoImpl implements CategoryRepo {
  final NetworkInfo networkInfo;
  final CategoryRemoteDataSource categoryRemoteDataSource;

  CategoryRepoImpl(this.networkInfo, this.categoryRemoteDataSource);

  @override
  Future<Either<Failures, List<CategoryDataModel>>> getCategory() async {
    return executeAndCatchError(() async {
      final response = await categoryRemoteDataSource.getCategory();
      return response.data?.category ?? [];
    });
  }

  @override
  Future<Either<Failures, AttributesAdsModel>> getAttributesForAds(
      {required String subCategory}) {
    return executeAndCatchError(() =>
        categoryRemoteDataSource.getAttributesForAds(subCategory: subCategory));
  }

  @override
  Future<Either<Failures, void>> createAds(
      {required AttributesForm attributesForm}) {
    return executeAndCatchError(() =>
        categoryRemoteDataSource.createAdd(attributesForm: attributesForm));
  }

  @override
  Future<Either<Failures, BrandAdsModel>> getBrands(
      {required String subCategory}) {
    // TODO: implement getBrands
    return executeAndCatchError(
        () => categoryRemoteDataSource.getBrands(subCategory: subCategory));
  }
}
