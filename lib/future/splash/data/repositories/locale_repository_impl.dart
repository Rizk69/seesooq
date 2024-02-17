import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failures.dart';
import '../../domain/repositories/locale_repository.dart';
import '../datasources/lang_local_data_sourece.dart';

@LazySingleton(as: LocaleRepository)
class LocaleRepositoryImpl extends LocaleRepository {
  final LangLocalDataSource langLocalDataSource;

  LocaleRepositoryImpl({required this.langLocalDataSource});

  @override
  Future<Either<Failures, bool>> changeLang(String langCode) async {
    try {
      return Right(await langLocalDataSource.changeLang(langCode));
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, String>> getSavedLang() async {
    try {
      var response = await langLocalDataSource.getSavedLang();
      return Right(response!);
    } catch (e) {
      return const Left(DefaultFailure());
    }
  }

  @override
  Future<Either<Failures, bool>> changeTheme(String themeMode) async {
    try {
      var response = await langLocalDataSource.changeTheme(themeMode);
      return Right(response);
    } catch (e) {
      return const Left(DefaultFailure());
    }
  }

  @override
  Future<Either<Failures, String?>> getTheme() async {
    try {
      var response = await langLocalDataSource.getTheme();
      return Right(response??'light');
    } catch (e) {
      return const Left(DefaultFailure());
    }}
}
