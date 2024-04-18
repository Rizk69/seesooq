import 'package:meta/meta.dart';



@immutable
abstract class LocationSelectionEvent {}

class LocationSelectedEvent extends LocationSelectionEvent {
  final String? country;
  final String? city;
  final String? region;

  LocationSelectedEvent({this.country, this.city, this.region});
}

class LocationSelectionState {
  final String? selectedCountry;
  final String? selectedCity;
  final String? selectedRegion;

  LocationSelectionState(
      {this.selectedCountry, this.selectedCity, this.selectedRegion});
}