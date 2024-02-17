

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/setting_repository.dart';
import '../local/data_sources/setting_local_data_source.dart';


@Injectable(as: SettingRepository)
class SettingRepositoryImpl implements SettingRepository {
  final NetworkInfo networkInfo;
  final SettingLocalDataSource settingLocalDataSource;

  SettingRepositoryImpl({
    required this.networkInfo,
    required this.settingLocalDataSource,
  });



  @override
  Future<Either<Failures, bool>> getFaceId() {
    // TODO: implement getFaceId
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, bool>> getFingerPrint() {
    // TODO: implement getFingerPrint
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, bool>> saveFaceId() {
    // TODO: implement saveFaceId
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, bool>> saveFingerPrint()async {
  if(await networkInfo.isConnected){
    try{
    final response = await  settingLocalDataSource.saveFingerPrint(fingerPrint: true);
      return Right(response);
    }catch(e){
      return Left(CacheFailure());
    }

  }else{
    return Left(CacheFailure());
  }
  }
}
