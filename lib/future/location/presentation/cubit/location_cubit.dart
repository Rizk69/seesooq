import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:location/location.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/location/data/repositories/location_repo_impl.dart';
import 'package:opensooq/future/location/presentation/cubit/location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(const LocationState());
  final LocationRepo locationRepo = di.sl<LocationRepo>();

  Timer? debounce;

  Future<void> getPlaces({required String query, required String language}) async {
    emit(state.copyWith(
      locationStatus: LocationStatus.loading,
    ));
    if (debounce != null) debounce?.cancel();
    debounce = Timer(const Duration(milliseconds: 500), () async {
      await locationRepo.getPlaces(query: query, language: language).then(
            (value) => value.fold(
              (l) {
                emit(state.copyWith(
                  locationStatus: LocationStatus.error,
                ));
              },
              (r) {
                emit(state.copyWith(
                  placeTextModel: r,
                  locationStatus: LocationStatus.loaded,
                ));
                // onSuccess();
              },
            ),
          );
    });
  }

  Future<void> getCities({required int id}) async {
    emit(state.copyWith(
      locationStatus: LocationStatus.loading,
    ));
    if (debounce != null) debounce?.cancel();
    debounce = Timer(const Duration(milliseconds: 500), () async {
      await locationRepo.getCities(id: id).then(
            (value) => value.fold(
              (l) {
                emit(state.copyWith(
                  locationStatus: LocationStatus.error,
                ));
              },
              (citiesModel) {
                emit(state.copyWith(
                  cities: citiesModel.citiesData ?? [],
                  locationStatus: LocationStatus.loaded,
                ));
                // onSuccess();
              },
            ),
          );
    });
  }

  Future<void> getGovernorate() async {
    emit(state.copyWith(
      locationStatus: LocationStatus.loading,
    ));
    if (debounce != null) debounce?.cancel();
    debounce = Timer(const Duration(milliseconds: 500), () async {
      await locationRepo.getGovernorate().then(
            (value) => value.fold(
              (l) {
                // emit(state.copyWith(
                //   locationStatus: LocationStatus.error,
                // ));
              },
              (citiesModel) {
                emit(state.copyWith(
                  governorate: citiesModel.citiesData ?? [],
                  // locationStatus: LocationStatus.loaded,
                ));
                // onSuccess();
              },
            ),
          );
    });
  }

  void getLocationName(String name) {
    emit(state.copyWith(
      locationName: name,
    ));
  }

  void clearPlaces() {
    emit(state.copyWith(
      placeTextModel: null,
      locationStatus: LocationStatus.initial,
    ));
  }

  Future<void> getCurrentLocation() async {
    // get the address from the coordinates using geocoder lib
    EasyLoading.show(status: 'loading...');
    //check if the location service is enabled
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;
    Location location = Location();
    if (await location.serviceEnabled() == false) {
      _serviceEnabled = await location.requestService();
      if (_serviceEnabled == false) {
        EasyLoading.dismiss();
        return;
      }
    }

    // Position data = await Geolocator.getCurrentPosition();
    // List<Placemark> placemarks = await placemarkFromCoordinates(
    //     data.latitude, data.longitude,
    //     localeIdentifier: 'ar');

    emit(state.copyWith(
      locationName: 'placemarks.first.administrativeArea',
      locationStatus: LocationStatus.initial,
    ));
    EasyLoading.dismiss();
  }
}
