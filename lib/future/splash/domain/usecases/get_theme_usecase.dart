import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/usecasses/usecasess_shared.dart';

import '../../../../core/usecasses/usecasses.dart';
import '../repositories/locale_repository.dart';


@LazySingleton()
class GetThemeUseCase extends UseCases<String?, NoParams> {
  final LocaleRepository langRepository;

  GetThemeUseCase({required this.langRepository});

  @override
  Future<Either<Failures, String?>> call(NoParams params) async{
    return  langRepository.getTheme();

  }



}
