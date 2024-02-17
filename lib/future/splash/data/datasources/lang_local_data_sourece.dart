import 'package:injectable/injectable.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../core/utils/cache_helper.dart';

abstract class LangLocalDataSource {
  Future<String?> getSavedLang();

  Future<bool> changeLang(String langCode);
  Future<bool> changeTheme(String themeMode);
  Future<String?> getTheme();
}

@LazySingleton(as: LangLocalDataSource)
class LangLocalDataSourceImpl extends LangLocalDataSource {
  final CacheHelper cacheHelper;

  LangLocalDataSourceImpl({required this.cacheHelper});

  @override
  Future<bool> changeLang(String langCode) async {
    return await cacheHelper.saveData(
      key: AppStrings.locale,
      value: langCode,
    );
  }

  @override
  Future<String?> getSavedLang() async {
    return cacheHelper.getData(key: AppStrings.locale);
  }

  @override
  Future<bool> changeTheme(String themeMode) async {
    return cacheHelper.saveData(key: AppStrings.themeMode, value: themeMode);
  }

  @override
  Future<String?> getTheme() async {
    return cacheHelper.getData(key: AppStrings.themeMode);
  }
}
