import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasess_shared.dart';
import 'package:opensooq/core/usecasses/usecasses.dart';
import 'package:opensooq/future/login/domain/repositories/login_repo.dart';
import 'package:opensooq/future/user_local_model.dart';

@lazySingleton
class GetUserLocalUseCase implements UseCases<UserLocalModel, NoParams> {
  final LoginRepository loginRepository;

  GetUserLocalUseCase({required this.loginRepository});

  @override
  Future<Either<Failures, UserLocalModel>> call(NoParams params) {
    return loginRepository.getUserLocal();
  }
}
