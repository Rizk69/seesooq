import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';

abstract class LocaleRepository {
  Future<Either<Failures, String?>> getSavedLang();
  Future<Either<Failures, bool>> changeLang(String langCode);
  Future<Either<Failures, bool>> changeTheme(String themeMode);
  Future<Either<Failures, String?>> getTheme();
}
