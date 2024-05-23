import 'package:injectable/injectable.dart';
import 'package:opensooq/core/helper/success_model.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';

import '../../../../core/network/api/my_ads_api.dart';

abstract class MyAdsRemoteDataSource {
  Future<MyAdsModel> getMyAds();
  Future<SuccessModel> deleteMyAds({required int id});
}

@LazySingleton(as: MyAdsRemoteDataSource)
class MyAdsRemoteDataSourceImpl implements MyAdsRemoteDataSource {
  final MyAdsApi api;

  MyAdsRemoteDataSourceImpl(this.api);

  @override
  Future<MyAdsModel> getMyAds() async {
    return await api.getMyAds(type: 'all', page: 1);
  }

  @override
  Future<SuccessModel> deleteMyAds({required int id}) async {
    return await api.deleteMyAds(id: id);
  }
}
