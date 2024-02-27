// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteState {
  FavoriteStatus get status => throw _privateConstructorUsedError;
  AddFavoriteStatus get addFavoriteStatus => throw _privateConstructorUsedError;
  List<FavData> get favoriteList => throw _privateConstructorUsedError;
  int get indexFavoriteView => throw _privateConstructorUsedError;
  int get indexStatusView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call(
      {FavoriteStatus status,
      AddFavoriteStatus addFavoriteStatus,
      List<FavData> favoriteList,
      int indexFavoriteView,
      int indexStatusView});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? addFavoriteStatus = null,
    Object? favoriteList = null,
    Object? indexFavoriteView = null,
    Object? indexStatusView = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoriteStatus,
      addFavoriteStatus: null == addFavoriteStatus
          ? _value.addFavoriteStatus
          : addFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as AddFavoriteStatus,
      favoriteList: null == favoriteList
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<FavData>,
      indexFavoriteView: null == indexFavoriteView
          ? _value.indexFavoriteView
          : indexFavoriteView // ignore: cast_nullable_to_non_nullable
              as int,
      indexStatusView: null == indexStatusView
          ? _value.indexStatusView
          : indexStatusView // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteStateImplCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateImplCopyWith(
          _$FavoriteStateImpl value, $Res Function(_$FavoriteStateImpl) then) =
      __$$FavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FavoriteStatus status,
      AddFavoriteStatus addFavoriteStatus,
      List<FavData> favoriteList,
      int indexFavoriteView,
      int indexStatusView});
}

/// @nodoc
class __$$FavoriteStateImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateImpl>
    implements _$$FavoriteStateImplCopyWith<$Res> {
  __$$FavoriteStateImplCopyWithImpl(
      _$FavoriteStateImpl _value, $Res Function(_$FavoriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? addFavoriteStatus = null,
    Object? favoriteList = null,
    Object? indexFavoriteView = null,
    Object? indexStatusView = null,
  }) {
    return _then(_$FavoriteStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoriteStatus,
      addFavoriteStatus: null == addFavoriteStatus
          ? _value.addFavoriteStatus
          : addFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as AddFavoriteStatus,
      favoriteList: null == favoriteList
          ? _value._favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<FavData>,
      indexFavoriteView: null == indexFavoriteView
          ? _value.indexFavoriteView
          : indexFavoriteView // ignore: cast_nullable_to_non_nullable
              as int,
      indexStatusView: null == indexStatusView
          ? _value.indexStatusView
          : indexStatusView // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FavoriteStateImpl implements _FavoriteState {
  const _$FavoriteStateImpl(
      {this.status = FavoriteStatus.initial,
      this.addFavoriteStatus = AddFavoriteStatus.initial,
      final List<FavData> favoriteList = const [],
      this.indexFavoriteView = 0,
      this.indexStatusView = 0})
      : _favoriteList = favoriteList;

  @override
  @JsonKey()
  final FavoriteStatus status;
  @override
  @JsonKey()
  final AddFavoriteStatus addFavoriteStatus;
  final List<FavData> _favoriteList;
  @override
  @JsonKey()
  List<FavData> get favoriteList {
    if (_favoriteList is EqualUnmodifiableListView) return _favoriteList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteList);
  }

  @override
  @JsonKey()
  final int indexFavoriteView;
  @override
  @JsonKey()
  final int indexStatusView;

  @override
  String toString() {
    return 'FavoriteState(status: $status, addFavoriteStatus: $addFavoriteStatus, favoriteList: $favoriteList, indexFavoriteView: $indexFavoriteView, indexStatusView: $indexStatusView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.addFavoriteStatus, addFavoriteStatus) ||
                other.addFavoriteStatus == addFavoriteStatus) &&
            const DeepCollectionEquality()
                .equals(other._favoriteList, _favoriteList) &&
            (identical(other.indexFavoriteView, indexFavoriteView) ||
                other.indexFavoriteView == indexFavoriteView) &&
            (identical(other.indexStatusView, indexStatusView) ||
                other.indexStatusView == indexStatusView));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      addFavoriteStatus,
      const DeepCollectionEquality().hash(_favoriteList),
      indexFavoriteView,
      indexStatusView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      __$$FavoriteStateImplCopyWithImpl<_$FavoriteStateImpl>(this, _$identity);
}

abstract class _FavoriteState implements FavoriteState {
  const factory _FavoriteState(
      {final FavoriteStatus status,
      final AddFavoriteStatus addFavoriteStatus,
      final List<FavData> favoriteList,
      final int indexFavoriteView,
      final int indexStatusView}) = _$FavoriteStateImpl;

  @override
  FavoriteStatus get status;
  @override
  AddFavoriteStatus get addFavoriteStatus;
  @override
  List<FavData> get favoriteList;
  @override
  int get indexFavoriteView;
  @override
  int get indexStatusView;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteStateImplCopyWith<_$FavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
