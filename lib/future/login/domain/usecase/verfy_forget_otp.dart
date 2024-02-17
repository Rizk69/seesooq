import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/login/data/models/forget_password_model.dart';
import 'package:opensooq/future/login/domain/repositories/login_repo.dart';

@lazySingleton
class VerifyForGetPasswordUserUseCase implements UseCases<ForGetPasswordModel, VerifyForGetPasswordUserParams> {
  final LoginRepository loginRepository;

  VerifyForGetPasswordUserUseCase({required this.loginRepository});

  @override
  Future<Either<Failures, ForGetPasswordModel>> call(VerifyForGetPasswordUserParams params) {
    return loginRepository.verifyForgetPasswordUser(params: params);
  }
}

class VerifyForGetPasswordUserParams extends Equatable {
  final String phone;
  final String otp;

  const VerifyForGetPasswordUserParams({required this.phone, required this.otp});
  @override
  List<Object?> get props => [phone, otp];

  toJson() => {
        "phone": phone,
        "otp": otp,
      };
}
