import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';

import '../../../../core/usecasses/usecasses.dart';
import '../repositories/locale_repository.dart';


@LazySingleton()
class ChangeLangUseCase extends UseCases<bool, String> {
  final LocaleRepository langRepository;

  ChangeLangUseCase({required this.langRepository});

  @override
  Future<Either<Failures, bool?>> call(String params) async{
    return await langRepository.changeLang(params);

  }



}
