import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/login/data/models/forget_password_model.dart';
import 'package:opensooq/future/login/domain/repositories/login_repo.dart';

@lazySingleton
class ForGetPasswordUserUseCase implements UseCases<ForGetPasswordModel, ForGetPasswordUserParams> {
  final LoginRepository loginRepository;

  ForGetPasswordUserUseCase({required this.loginRepository});

  @override
  Future<Either<Failures, ForGetPasswordModel>> call(ForGetPasswordUserParams params) {
    return loginRepository.forgetPasswordUser(params: params);
  }
}

class ForGetPasswordUserParams extends Equatable {
  final String emailOrPhone;

  const ForGetPasswordUserParams({required this.emailOrPhone});
  @override
  List<Object?> get props => [emailOrPhone];

  toJson() => {
        "phone": emailOrPhone,
      };
}
