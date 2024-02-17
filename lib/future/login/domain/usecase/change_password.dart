import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/login/data/models/change_password_model.dart';
import 'package:opensooq/future/login/domain/repositories/login_repo.dart';

@lazySingleton
class ChangePasswordUserUseCase implements UseCases<ChangePasswordModel, ChangePasswordUserParams> {
  final LoginRepository loginRepository;

  ChangePasswordUserUseCase({required this.loginRepository});

  @override
  Future<Either<Failures, ChangePasswordModel>> call(ChangePasswordUserParams params) {
    return loginRepository.changePasswordUser(params: params);
  }
}

class ChangePasswordUserParams extends Equatable {
  final String phone;
  final String password;

  const ChangePasswordUserParams({required this.phone, required this.password});
  @override
  List<Object?> get props => [phone, password];

  toJson() => {
        "phone": phone,
        "password": password,
      };
}
