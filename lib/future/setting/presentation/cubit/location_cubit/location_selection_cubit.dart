import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'location_selection_state.dart';



class LocationSelectionCubit extends Cubit<LocationSelectionState> {
  LocationSelectionCubit()
      : super(LocationSelectionState(
      selectedCountry: null, selectedCity: null, selectedRegion: null));
  final List<String> countries = ['Country 1', 'Country 2', 'Country 3'];
  final List<String> cities = ['City 1', 'City 2', 'City 3'];
  final List<String> regions = ['Region 1', 'Region 2', 'Region 3'];

  void updateLocation(
      {String? country, String? city, String? region, BuildContext? context}) {
    emit(LocationSelectionState(
        selectedCountry: country,
        selectedCity: city,
        selectedRegion: region));
  }
}
