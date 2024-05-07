import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/setting/data/data_sources/setting_remote_data_source.dart';
import 'package:opensooq/future/setting/data/models/edit_user_model.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

abstract class SettingRepository {
  Future<Either<Failures, EditUserModel>> editUser({required String name, required String email, required String phone});
  Future<Either<Failures, GeneralSettingModel>> getPrivacyPolicy();
  Future<Either<Failures, GeneralSettingModel>> getTermsOfUse();
  Future<Either<Failures, GeneralSettingModel>> getReasonsForDeletion();
  Future<Either<Failures, GeneralSettingModel>> getFrequentlyAskQuestion();
  Future<Either<Failures, GeneralSettingModel>> getContactUs();
  Future<Either<Failures, GeneralSettingModel>> getAboutUs();
  Future<Either<Failures, GeneralSettingModel>> deleteAccount({required String reason});
}

@LazySingleton(as: SettingRepository)
class SettingRepositoryImpl implements SettingRepository {
  final SettingRemoteDataSource settingRemoteDataSource;

  SettingRepositoryImpl(this.settingRemoteDataSource);

  @override
  Future<Either<Failures, EditUserModel>> editUser({required String name, required String email, required String phone}) async {
    return executeAndCatchError<EditUserModel>(() async => await settingRemoteDataSource.editUser(name: name, email: email, phone: phone));
  }

  @override
  Future<Either<Failures, GeneralSettingModel>> getPrivacyPolicy() async {
    return executeAndCatchError(() async => await settingRemoteDataSource.privacyPolicy());
  }

  @override
  Future<Either<Failures, GeneralSettingModel>> getReasonsForDeletion() async {
    return executeAndCatchError(() async => await settingRemoteDataSource.reasonsForDeletion());
  }

  @override
  Future<Either<Failures, GeneralSettingModel>> getTermsOfUse() async {
    return executeAndCatchError(() async => await settingRemoteDataSource.termsOfUse());
  }

  @override
  Future<Either<Failures, GeneralSettingModel>> getAboutUs() {
    return executeAndCatchError(() async => await settingRemoteDataSource.getAboutUs());
  }

  @override
  Future<Either<Failures, GeneralSettingModel>> getContactUs() {
    return executeAndCatchError(() async => await settingRemoteDataSource.getContactUs());
  }

  @override
  Future<Either<Failures, GeneralSettingModel>> getFrequentlyAskQuestion() {
    return executeAndCatchError(() async => await settingRemoteDataSource.getFrequentlyAskQuestion());
  }

  @override
  Future<Either<Failures, GeneralSettingModel>> deleteAccount({required String reason}) {
    return executeAndCatchError(() async => await settingRemoteDataSource.deleteAccount(reason: reason));
  }
}
