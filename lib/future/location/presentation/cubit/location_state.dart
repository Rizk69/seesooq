import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/location/data/models/Place_text_model.dart';
import 'package:opensooq/future/location/data/models/cities_model.dart';

part 'location_state.freezed.dart';

enum LocationStatus { initial, loading, loaded, error }

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    @Default(null) PlaceTextModel? placeTextModel,
    @Default(LocationStatus.initial) LocationStatus locationStatus,
    @Default([]) List<CitiesData> cities,
    @Default([]) List<CitiesData> governorate,
    @Default(null) String? locationName,
  }) = _LocationState;
}
