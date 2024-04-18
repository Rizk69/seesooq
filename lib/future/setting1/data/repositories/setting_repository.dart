import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/setting1/data/data_sources/setting_remote_data_source.dart';
import 'package:opensooq/future/setting1/data/models/edit_user_model.dart';
import 'package:opensooq/future/setting1/data/models/privacy_policy_model.dart';
import 'package:opensooq/future/setting1/data/models/reasons_for_deletion_model.dart';
import 'package:opensooq/future/setting1/data/models/terms_of_use_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

abstract class SettingRepository {
  Future<Either<Failures, EditUserModel>> editUser(
      {required String name, required String email});
  Future<Either<Failures, PrivacyPolicyModel>> privacyPolicy();
  Future<Either<Failures, TermsOfUseModel>> termsOfUse();
  Future<Either<Failures, ReasonsForDeletionModel>> reasonsForDeletion();
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
  }

  @override
  Future<Either<Failures, PrivacyPolicyModel>> privacyPolicy()async {
    return executeAndCatchError<PrivacyPolicyModel>(() async =>
    await settingRemoteDataSource.privacyPolicy());
  }

  @override
  Future<Either<Failures, ReasonsForDeletionModel>> reasonsForDeletion() async{
    return executeAndCatchError<ReasonsForDeletionModel>(() async =>
    await settingRemoteDataSource.reasonsForDeletion());
  }

  @override
  Future<Either<Failures, TermsOfUseModel>> termsOfUse() async{
    return executeAndCatchError<TermsOfUseModel>(() async =>
    await settingRemoteDataSource.termsOfUse());
  }
}
