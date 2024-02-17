import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';

import '../../../../core/usecasses/usecasses.dart';
import '../repositories/locale_repository.dart';


@LazySingleton()
class ChangeThemeUseCase extends UseCases<bool, String> {
  final LocaleRepository langRepository;

  ChangeThemeUseCase({required this.langRepository});

  @override
  Future<Either<Failures, bool?>> call(String params) async{
    return await langRepository.changeTheme(params);

  }



}
