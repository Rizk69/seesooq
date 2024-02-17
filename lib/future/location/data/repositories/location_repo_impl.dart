import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/location/data/data_sources/location_remote_data_source.dart';
import 'package:opensooq/future/location/data/models/Place_text_model.dart';
import 'package:opensooq/future/location/data/models/cities_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

abstract class LocationRepo {
  Future<Either<Failures, PlaceTextModel>> getPlaces({required String query, required String language});
  Future<Either<Failures, CitiesModel>> getCities({required int id});
  Future<Either<Failures, CitiesModel>> getGovernorate();
}

@Injectable(as: LocationRepo)
class LocationRepoImpl implements LocationRepo {
  final LocationRemoteDataSource remoteSource;

  LocationRepoImpl(this.remoteSource);

  @override
  Future<Either<Failures, PlaceTextModel>> getPlaces({required String query, required String language}) async {
    return executeAndCatchError(() => remoteSource.getPlaces(query: query, language: language));
  }

  @override
  Future<Either<Failures, CitiesModel>> getCities({required int id}) async {
    return executeAndCatchError(() => remoteSource.getCities(id: id));
  }

  @override
  Future<Either<Failures, CitiesModel>> getGovernorate() async {
    return executeAndCatchError(() => remoteSource.getGovernorate());
  }
}
