import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecasses/usecasess_shared.dart';
import '../../../../core/usecasses/usecasses.dart';
import '../repositories/setting_repository.dart';

@LazySingleton()
class GetFingerPrintUseCase implements UseCases<bool, NoParams> {
  final SettingRepository settingRepository;

  GetFingerPrintUseCase({required this.settingRepository});

  @override
  Future<Either<Failures, bool>> call(NoParams params) {
    return settingRepository.getFingerPrint();
  }
}


