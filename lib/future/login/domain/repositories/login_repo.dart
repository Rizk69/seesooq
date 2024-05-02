import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/login/data/models/change_password_model.dart';
import 'package:opensooq/future/login/data/models/forget_password_model.dart';
import 'package:opensooq/future/login/data/models/login_model.dart';
import 'package:opensooq/future/login/domain/repositories/login_params.dart';
import 'package:opensooq/future/login/domain/usecase/change_password.dart';
import 'package:opensooq/future/login/domain/usecase/forget_password.dart';
import 'package:opensooq/future/login/domain/usecase/verfy_forget_otp.dart';
import 'package:opensooq/future/user_local_model.dart';

abstract class LoginRepository {
  Future<Either<Failures, LoginModel>> loginWithEmailOrPhone({required LoginParams params});
  Future<Either<Failures, ForGetPasswordModel>> forgetPasswordUser({required ForGetPasswordUserParams params});
  Future<Either<Failures, ForGetPasswordModel>> verifyForgetPasswordUser({required VerifyForGetPasswordUserParams params});
  Future<Either<Failures, ChangePasswordModel>> changePasswordUser({required ChangePasswordUserParams params});
  Future<Either<Failures, UserLocalModel>> getUserLocal();
  Future<Either<Failures, void>> deleteUserLocal();
  // Future<Either<Failures, User>> loginWithGoogle();
  // Future<Either<Failures, User>> loginWithApple();
}
