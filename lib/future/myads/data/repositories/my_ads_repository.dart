import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/helper/success_model.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

import '../data_sorces/my_ads_remot_data_sorces.dart';

abstract class MyAdsRepository {
  Future<Either<Failures, MyAdsModel>> getMyAds();
  Future<Either<Failures, SuccessModel>> deleteMyAds({required int id});
}

@LazySingleton(as: MyAdsRepository)
class MyAdsRepositoryImpl implements MyAdsRepository {
  final MyAdsRemoteDataSource myAdsRemoteDataSource;

  MyAdsRepositoryImpl(this.myAdsRemoteDataSource);

  @override
  Future<Either<Failures, MyAdsModel>> getMyAds() async {
    final response = await myAdsRemoteDataSource.getMyAds();
    return Right(response);
  }

  @override
  Future<Either<Failures, SuccessModel>> deleteMyAds({required int id}) async {
     final response = await myAdsRemoteDataSource.deleteMyAds(id: id);
      return Right(response);
  }
}
