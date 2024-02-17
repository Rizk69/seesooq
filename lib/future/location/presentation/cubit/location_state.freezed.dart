// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationState {
  PlaceTextModel? get placeTextModel => throw _privateConstructorUsedError;
  LocationStatus get locationStatus => throw _privateConstructorUsedError;
  List<CitiesData> get cities => throw _privateConstructorUsedError;
  List<CitiesData> get governorate => throw _privateConstructorUsedError;
  String? get locationName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {PlaceTextModel? placeTextModel,
      LocationStatus locationStatus,
      List<CitiesData> cities,
      List<CitiesData> governorate,
      String? locationName});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeTextModel = freezed,
    Object? locationStatus = null,
    Object? cities = null,
    Object? governorate = null,
    Object? locationName = freezed,
  }) {
    return _then(_value.copyWith(
      placeTextModel: freezed == placeTextModel
          ? _value.placeTextModel
          : placeTextModel // ignore: cast_nullable_to_non_nullable
              as PlaceTextModel?,
      locationStatus: null == locationStatus
          ? _value.locationStatus
          : locationStatus // ignore: cast_nullable_to_non_nullable
              as LocationStatus,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CitiesData>,
      governorate: null == governorate
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as List<CitiesData>,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlaceTextModel? placeTextModel,
      LocationStatus locationStatus,
      List<CitiesData> cities,
      List<CitiesData> governorate,
      String? locationName});
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeTextModel = freezed,
    Object? locationStatus = null,
    Object? cities = null,
    Object? governorate = null,
    Object? locationName = freezed,
  }) {
    return _then(_$LocationStateImpl(
      placeTextModel: freezed == placeTextModel
          ? _value.placeTextModel
          : placeTextModel // ignore: cast_nullable_to_non_nullable
              as PlaceTextModel?,
      locationStatus: null == locationStatus
          ? _value.locationStatus
          : locationStatus // ignore: cast_nullable_to_non_nullable
              as LocationStatus,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CitiesData>,
      governorate: null == governorate
          ? _value._governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as List<CitiesData>,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  const _$LocationStateImpl(
      {this.placeTextModel = null,
      this.locationStatus = LocationStatus.initial,
      final List<CitiesData> cities = const [],
      final List<CitiesData> governorate = const [],
      this.locationName = null})
      : _cities = cities,
        _governorate = governorate;

  @override
  @JsonKey()
  final PlaceTextModel? placeTextModel;
  @override
  @JsonKey()
  final LocationStatus locationStatus;
  final List<CitiesData> _cities;
  @override
  @JsonKey()
  List<CitiesData> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<CitiesData> _governorate;
  @override
  @JsonKey()
  List<CitiesData> get governorate {
    if (_governorate is EqualUnmodifiableListView) return _governorate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_governorate);
  }

  @override
  @JsonKey()
  final String? locationName;

  @override
  String toString() {
    return 'LocationState(placeTextModel: $placeTextModel, locationStatus: $locationStatus, cities: $cities, governorate: $governorate, locationName: $locationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.placeTextModel, placeTextModel) ||
                other.placeTextModel == placeTextModel) &&
            (identical(other.locationStatus, locationStatus) ||
                other.locationStatus == locationStatus) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._governorate, _governorate) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      placeTextModel,
      locationStatus,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_governorate),
      locationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {final PlaceTextModel? placeTextModel,
      final LocationStatus locationStatus,
      final List<CitiesData> cities,
      final List<CitiesData> governorate,
      final String? locationName}) = _$LocationStateImpl;

  @override
  PlaceTextModel? get placeTextModel;
  @override
  LocationStatus get locationStatus;
  @override
  List<CitiesData> get cities;
  @override
  List<CitiesData> get governorate;
  @override
  String? get locationName;
  @override
  @JsonKey(ignore: true)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
