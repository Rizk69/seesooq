import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/packages_api.dart';
import 'package:opensooq/future/packages/data/models/packages_model.dart';

abstract class PackagesRemoteDataSource {
  Future<PackagesModel> getPackages();
}

@LazySingleton(as: PackagesRemoteDataSource)
class PackagesRemoteDataSourceImpl implements PackagesRemoteDataSource {
  final PackagesApi packagesApi;

  PackagesRemoteDataSourceImpl({
    required this.packagesApi,
  });

  @override
  Future<PackagesModel> getPackages() async {
    return await packagesApi.getPackages();
  }
}
