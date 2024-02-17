import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/error_handler.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/signup/data/data_sources/signup_remote_data_source.dart';
import 'package:opensooq/future/signup/data/models/sign_up_model.dart';
import 'package:opensooq/future/signup/data/repositories/params/signup_params.dart';

abstract class SignUpRepository {
  Future<Either<Failures, User?>> signUp();
  Future<Either<Failures, SignUpModel>> signUpWithEmailAndPhone({required SignUpParams params});
  // Future<Either<Failures, SignUpModel>> verifyOtp({required SignUpParams params});
}

@LazySingleton(as: SignUpRepository)
class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpRemoteDataSource signUpRemoteDataSource;

  SignUpRepositoryImpl(this.signUpRemoteDataSource);

  @override
  Future<Either<Failures, User?>> signUp() async {
    return executeAndCatchError(() => signUpRemoteDataSource.signUp());
  }

  @override
  Future<Either<Failures, SignUpModel>> signUpWithEmailAndPhone({required SignUpParams params}) {
    return executeAndCatchError(() => signUpRemoteDataSource.signUpWithEmailAndPhone(params: params));
  }
}

Future<Either<Failures, T>> executeAndCatchError<T>(Future<T> Function() function) async {
  try {
    final result = await function();
    return Right(result);
  } on DioException catch (e) {
    return Left(ErrorHandler.handleError(e));
  }
}
