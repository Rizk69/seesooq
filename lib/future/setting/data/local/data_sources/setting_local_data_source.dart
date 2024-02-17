import 'package:injectable/injectable.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/cache_helper.dart';

abstract class SettingLocalDataSource {
  Future<bool> saveFingerPrint({required bool fingerPrint});
  Future<bool> getFingerPrint();
  Future<bool> saveFaceID({required bool faceID});
}

@Injectable(as: SettingLocalDataSource)
class SettingLocalDataSourceImpl implements SettingLocalDataSource {
  final CacheHelper cacheHelper;

  SettingLocalDataSourceImpl({required this.cacheHelper});

  @override
  Future<bool> saveFingerPrint({required bool fingerPrint}) async {

    return cacheHelper.saveData(key: AppStrings.fingerPrint, value: fingerPrint);
  }

  @override
  Future<bool> getFingerPrint() {
    return cacheHelper.getData(key: AppStrings.fingerPrint,);

  }

  @override
  Future<bool> saveFaceID({required bool faceID}) {
    return cacheHelper.saveData(key: AppStrings.faceId, value: faceID);

  }
}
