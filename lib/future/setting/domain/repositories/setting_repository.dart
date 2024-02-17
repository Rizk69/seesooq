

import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';


abstract class SettingRepository{
  Future<Either<Failures,bool>> saveFingerPrint();
  Future<Either<Failures,bool>> getFingerPrint();
  Future<Either<Failures,bool>> saveFaceId();
  Future<Either<Failures,bool>> getFaceId();
}