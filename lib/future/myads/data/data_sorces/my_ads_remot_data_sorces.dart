import 'package:injectable/injectable.dart';

import '../../../../core/network/api/my_ads_api.dart';
import '../model/my_ads_model.dart';


abstract class MyAdsRemoteDataSource {
  Future<MyAdsModel> getMyAds();
  Future<bool> deleteMyAds({required int id});
}

@LazySingleton(as: MyAdsRemoteDataSource)
class MyAdsRemoteDataSourceImpl implements MyAdsRemoteDataSource {
  final MyAdsApi api;

  MyAdsRemoteDataSourceImpl(this.api);

  @override
  Future<MyAdsModel> getMyAds(
      ) async {
    return await api.getMyAds();
  }

  @override
  Future<bool> deleteMyAds({required int id}) async {
    return await api.deleteMyAds(id: id);
  }
}
