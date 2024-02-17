import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/location_api.dart';
import 'package:opensooq/future/location/data/models/Place_text_model.dart';
import 'package:opensooq/future/location/data/models/cities_model.dart';

abstract class LocationRemoteDataSource {
  Future<PlaceTextModel> getPlaces({required String query, required String language});

  Future<CitiesModel> getCities({required int id});
  Future<CitiesModel> getGovernorate();
// Future<NotificationResponseModel> markNotificationAsRead(
//     {required String id});
// Future<NotificationResponseModel> readAllNotifications();
// Future<String> sendNotificationToken({required String token});
}

@Injectable(as: LocationRemoteDataSource)
class LocationRemoteImpl implements LocationRemoteDataSource {
  final LocationApi apiConsumer;

  LocationRemoteImpl(this.apiConsumer);

  @override
  Future<PlaceTextModel> getPlaces({required String query, required String language}) async {
    return apiConsumer.getPlaces(key: 'AIzaSyDGGoO_LhXvVjCHkC6Z6Uc6FEwSEcI_CKw', language: language, query: query);
  }

  @override
  Future<CitiesModel> getCities({required int id}) {
    return apiConsumer.getCities(id: id);
  }

  @override
  Future<CitiesModel> getGovernorate() {
    return apiConsumer.getGovernorate();
  }
}
