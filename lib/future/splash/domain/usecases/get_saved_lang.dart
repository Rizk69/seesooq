import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failures.dart';
import '../../../../core/usecasses/usecasess_shared.dart';
import '../../../../core/usecasses/usecasses.dart';
import '../repositories/locale_repository.dart';

@LazySingleton()
class GetSavedLangUseCase extends UseCases<String?, NoParams> {
  final LocaleRepository langRepository;

  GetSavedLangUseCase({required this.langRepository});

  @override
  Future<Either<Failures, String?>> call(NoParams params) async {
    return await langRepository.getSavedLang();
  }
}
