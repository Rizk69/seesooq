import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/login/data/datasources/login_local_data_source.dart';
import 'package:opensooq/future/login/data/datasources/login_remote_data_source.dart';
import 'package:opensooq/future/login/data/models/change_password_model.dart';
import 'package:opensooq/future/login/data/models/forget_password_model.dart';
import 'package:opensooq/future/login/data/models/login_model.dart';
import 'package:opensooq/future/login/domain/repositories/login_params.dart';
import 'package:opensooq/future/login/domain/repositories/login_repo.dart';
import 'package:opensooq/future/login/domain/usecase/change_password.dart';
import 'package:opensooq/future/login/domain/usecase/forget_password.dart';
import 'package:opensooq/future/login/domain/usecase/verfy_forget_otp.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';
import 'package:opensooq/future/user_local_model.dart';

@LazySingleton(as: LoginRepository)
class LoginRepoImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;
  final LoginLocalDataSource localDataSource;

  LoginRepoImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failures, LoginModel>> loginWithEmailOrPhone({required LoginParams params}) async {
    return executeAndCatchError(() async {
      final response = await remoteDataSource.loginWithEmailOrPhone(params: params);
      if (response.token != null) {
        await localDataSource.cacheUserModel(
            userLocalModel: UserLocalModel(
                token: response.token,
                user: UserDataModel(
                  id: response.user?.id,
                  name: response.user?.name,
                  phone: response.user?.phone,
                )));
        return (response);
      } else {
        return response;
      }
    });
  }

  @override
  Future<Either<Failures, ForGetPasswordModel>> forgetPasswordUser({required ForGetPasswordUserParams params}) async {
    return executeAndCatchError(() async {
      final response = await remoteDataSource.forGetPasswordUser(params: params);
      return response;
    });
  }

  @override
  Future<Either<Failures, ForGetPasswordModel>> verifyForgetPasswordUser({required VerifyForGetPasswordUserParams params}) async {
    return executeAndCatchError(() async {
      final response = await remoteDataSource.verifyForGetPasswordUser(params: params);
      return response;
    });
  }

  @override
  Future<Either<Failures, ChangePasswordModel>> changePasswordUser({required ChangePasswordUserParams params}) async {
    return executeAndCatchError(() async {
      final response = await remoteDataSource.changePasswordUser(params: params);
      return response;
    });
  }

  @override
  Future<Either<Failures, UserLocalModel>> getUserLocal() async {
    return executeAndCatchError(() async {
      final response = await localDataSource.getUserModel();
      return response ?? UserLocalModel();
    });
  }

  @override
  Future<Either<Failures, void>> deleteUserLocal() async {
    return executeAndCatchError(() async {
      localDataSource.deleteUserLocalModel();
    });
  }
}
