import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/setting1/data/data_sources/setting_remote_data_source.dart';
import 'package:opensooq/future/setting1/data/models/edit_user_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

abstract class SettingRepository {
  Future<Either<Failures, EditUserModel>> editUser(
      {required String name, required String email});
}

@LazySingleton(as: SettingRepository)
class SettingRepositoryImpl implements SettingRepository {
  final SettingRemoteDataSource settingRemoteDataSource;

  SettingRepositoryImpl(this.settingRemoteDataSource);

  @override
  Future<Either<Failures, EditUserModel>> editUser(
      {required String name, required String email}) async {
    return executeAndCatchError<EditUserModel>(() async =>
        await settingRemoteDataSource.editUser(name: name, email: email));
    // try {
    //   final respons =
    //       await settingRemoteDataSource.editUser(name: name, email: email);
    //   return Right(respons);
    // } catch (e) {
    //   return Left(ErrorHandler.handleError(e));
    // }
  }
}
