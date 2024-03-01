import 'package:injectable/injectable.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';

import '../../../../core/network/api/my_ads_api.dart';

abstract class MyAdsRemoteDataSource {
  Future<AdvertisementModel> getMyAds();
  Future<bool> deleteMyAds({required int id});
}

@LazySingleton(as: MyAdsRemoteDataSource)
class MyAdsRemoteDataSourceImpl implements MyAdsRemoteDataSource {
  final MyAdsApi api;

  MyAdsRemoteDataSourceImpl(this.api);

  @override
  Future<AdvertisementModel> getMyAds() async {
    return await api.getMyAds();
  }

  @override
  Future<bool> deleteMyAds({required int id}) async {
    return await api.deleteMyAds(id: id);
  }
}
