// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reels_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReelsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelsEventCopyWith<$Res> {
  factory $ReelsEventCopyWith(
          ReelsEvent value, $Res Function(ReelsEvent) then) =
      _$ReelsEventCopyWithImpl<$Res, ReelsEvent>;
}

/// @nodoc
class _$ReelsEventCopyWithImpl<$Res, $Val extends ReelsEvent>
    implements $ReelsEventCopyWith<$Res> {
  _$ReelsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetReelsImplCopyWith<$Res> {
  factory _$$GetReelsImplCopyWith(
          _$GetReelsImpl value, $Res Function(_$GetReelsImpl) then) =
      __$$GetReelsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetReelsImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$GetReelsImpl>
    implements _$$GetReelsImplCopyWith<$Res> {
  __$$GetReelsImplCopyWithImpl(
      _$GetReelsImpl _value, $Res Function(_$GetReelsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetReelsImpl implements _GetReels {
  const _$GetReelsImpl();

  @override
  String toString() {
    return 'ReelsEvent.getReels()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetReelsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return getReels();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return getReels?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (getReels != null) {
      return getReels();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return getReels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return getReels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (getReels != null) {
      return getReels(this);
    }
    return orElse();
  }
}

abstract class _GetReels implements ReelsEvent {
  const factory _GetReels() = _$GetReelsImpl;
}

/// @nodoc
abstract class _$$RefreshReelsImplCopyWith<$Res> {
  factory _$$RefreshReelsImplCopyWith(
          _$RefreshReelsImpl value, $Res Function(_$RefreshReelsImpl) then) =
      __$$RefreshReelsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshReelsImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$RefreshReelsImpl>
    implements _$$RefreshReelsImplCopyWith<$Res> {
  __$$RefreshReelsImplCopyWithImpl(
      _$RefreshReelsImpl _value, $Res Function(_$RefreshReelsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshReelsImpl implements _RefreshReels {
  const _$RefreshReelsImpl();

  @override
  String toString() {
    return 'ReelsEvent.refreshReels()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshReelsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return refreshReels();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return refreshReels?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (refreshReels != null) {
      return refreshReels();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return refreshReels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return refreshReels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (refreshReels != null) {
      return refreshReels(this);
    }
    return orElse();
  }
}

abstract class _RefreshReels implements ReelsEvent {
  const factory _RefreshReels() = _$RefreshReelsImpl;
}

/// @nodoc
abstract class _$$LoadMoreReelsImplCopyWith<$Res> {
  factory _$$LoadMoreReelsImplCopyWith(
          _$LoadMoreReelsImpl value, $Res Function(_$LoadMoreReelsImpl) then) =
      __$$LoadMoreReelsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreReelsImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$LoadMoreReelsImpl>
    implements _$$LoadMoreReelsImplCopyWith<$Res> {
  __$$LoadMoreReelsImplCopyWithImpl(
      _$LoadMoreReelsImpl _value, $Res Function(_$LoadMoreReelsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreReelsImpl implements _LoadMoreReels {
  const _$LoadMoreReelsImpl();

  @override
  String toString() {
    return 'ReelsEvent.loadMoreReels()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreReelsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return loadMoreReels();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return loadMoreReels?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (loadMoreReels != null) {
      return loadMoreReels();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return loadMoreReels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return loadMoreReels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (loadMoreReels != null) {
      return loadMoreReels(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreReels implements ReelsEvent {
  const factory _LoadMoreReels() = _$LoadMoreReelsImpl;
}

/// @nodoc
abstract class _$$ViewReelImplCopyWith<$Res> {
  factory _$$ViewReelImplCopyWith(
          _$ViewReelImpl value, $Res Function(_$ViewReelImpl) then) =
      __$$ViewReelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, int indexPage});
}

/// @nodoc
class __$$ViewReelImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$ViewReelImpl>
    implements _$$ViewReelImplCopyWith<$Res> {
  __$$ViewReelImplCopyWithImpl(
      _$ViewReelImpl _value, $Res Function(_$ViewReelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? indexPage = null,
  }) {
    return _then(_$ViewReelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == indexPage
          ? _value.indexPage
          : indexPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ViewReelImpl implements _ViewReel {
  const _$ViewReelImpl(this.id, this.indexPage);

  @override
  final String id;
  @override
  final int indexPage;

  @override
  String toString() {
    return 'ReelsEvent.viewReel(id: $id, indexPage: $indexPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewReelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.indexPage, indexPage) ||
                other.indexPage == indexPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, indexPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewReelImplCopyWith<_$ViewReelImpl> get copyWith =>
      __$$ViewReelImplCopyWithImpl<_$ViewReelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return viewReel(id, indexPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return viewReel?.call(id, indexPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (viewReel != null) {
      return viewReel(id, indexPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return viewReel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return viewReel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (viewReel != null) {
      return viewReel(this);
    }
    return orElse();
  }
}

abstract class _ViewReel implements ReelsEvent {
  const factory _ViewReel(final String id, final int indexPage) =
      _$ViewReelImpl;

  String get id;
  int get indexPage;
  @JsonKey(ignore: true)
  _$$ViewReelImplCopyWith<_$ViewReelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateReelImplCopyWith<$Res> {
  factory _$$CreateReelImplCopyWith(
          _$CreateReelImpl value, $Res Function(_$CreateReelImpl) then) =
      __$$CreateReelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateReelImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$CreateReelImpl>
    implements _$$CreateReelImplCopyWith<$Res> {
  __$$CreateReelImplCopyWithImpl(
      _$CreateReelImpl _value, $Res Function(_$CreateReelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateReelImpl implements _CreateReel {
  const _$CreateReelImpl();

  @override
  String toString() {
    return 'ReelsEvent.createReel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateReelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return createReel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return createReel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (createReel != null) {
      return createReel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return createReel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return createReel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (createReel != null) {
      return createReel(this);
    }
    return orElse();
  }
}

abstract class _CreateReel implements ReelsEvent {
  const factory _CreateReel() = _$CreateReelImpl;
}

/// @nodoc
abstract class _$$GetMyReelsImplCopyWith<$Res> {
  factory _$$GetMyReelsImplCopyWith(
          _$GetMyReelsImpl value, $Res Function(_$GetMyReelsImpl) then) =
      __$$GetMyReelsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyReelsImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$GetMyReelsImpl>
    implements _$$GetMyReelsImplCopyWith<$Res> {
  __$$GetMyReelsImplCopyWithImpl(
      _$GetMyReelsImpl _value, $Res Function(_$GetMyReelsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMyReelsImpl implements _GetMyReels {
  const _$GetMyReelsImpl();

  @override
  String toString() {
    return 'ReelsEvent.getMyReels()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyReelsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return getMyReels();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return getMyReels?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (getMyReels != null) {
      return getMyReels();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return getMyReels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return getMyReels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (getMyReels != null) {
      return getMyReels(this);
    }
    return orElse();
  }
}

abstract class _GetMyReels implements ReelsEvent {
  const factory _GetMyReels() = _$GetMyReelsImpl;
}

/// @nodoc
abstract class _$$DeleteReelImplCopyWith<$Res> {
  factory _$$DeleteReelImplCopyWith(
          _$DeleteReelImpl value, $Res Function(_$DeleteReelImpl) then) =
      __$$DeleteReelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteReelImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$DeleteReelImpl>
    implements _$$DeleteReelImplCopyWith<$Res> {
  __$$DeleteReelImplCopyWithImpl(
      _$DeleteReelImpl _value, $Res Function(_$DeleteReelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteReelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteReelImpl implements _DeleteReel {
  const _$DeleteReelImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ReelsEvent.deleteReel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteReelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteReelImplCopyWith<_$DeleteReelImpl> get copyWith =>
      __$$DeleteReelImplCopyWithImpl<_$DeleteReelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return deleteReel(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return deleteReel?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (deleteReel != null) {
      return deleteReel(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return deleteReel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return deleteReel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (deleteReel != null) {
      return deleteReel(this);
    }
    return orElse();
  }
}

abstract class _DeleteReel implements ReelsEvent {
  const factory _DeleteReel(final String id) = _$DeleteReelImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteReelImplCopyWith<_$DeleteReelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavReelImplCopyWith<$Res> {
  factory _$$AddFavReelImplCopyWith(
          _$AddFavReelImpl value, $Res Function(_$AddFavReelImpl) then) =
      __$$AddFavReelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, int index});
}

/// @nodoc
class __$$AddFavReelImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$AddFavReelImpl>
    implements _$$AddFavReelImplCopyWith<$Res> {
  __$$AddFavReelImplCopyWithImpl(
      _$AddFavReelImpl _value, $Res Function(_$AddFavReelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
  }) {
    return _then(_$AddFavReelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddFavReelImpl implements _AddFavReel {
  const _$AddFavReelImpl(this.id, this.index);

  @override
  final String id;
  @override
  final int index;

  @override
  String toString() {
    return 'ReelsEvent.addFavReel(id: $id, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavReelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavReelImplCopyWith<_$AddFavReelImpl> get copyWith =>
      __$$AddFavReelImplCopyWithImpl<_$AddFavReelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return addFavReel(id, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return addFavReel?.call(id, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (addFavReel != null) {
      return addFavReel(id, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return addFavReel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return addFavReel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (addFavReel != null) {
      return addFavReel(this);
    }
    return orElse();
  }
}

abstract class _AddFavReel implements ReelsEvent {
  const factory _AddFavReel(final String id, final int index) =
      _$AddFavReelImpl;

  String get id;
  int get index;
  @JsonKey(ignore: true)
  _$$AddFavReelImplCopyWith<_$AddFavReelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnlikeReelImplCopyWith<$Res> {
  factory _$$UnlikeReelImplCopyWith(
          _$UnlikeReelImpl value, $Res Function(_$UnlikeReelImpl) then) =
      __$$UnlikeReelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UnlikeReelImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$UnlikeReelImpl>
    implements _$$UnlikeReelImplCopyWith<$Res> {
  __$$UnlikeReelImplCopyWithImpl(
      _$UnlikeReelImpl _value, $Res Function(_$UnlikeReelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UnlikeReelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnlikeReelImpl implements _UnlikeReel {
  const _$UnlikeReelImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ReelsEvent.unlikeReel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnlikeReelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnlikeReelImplCopyWith<_$UnlikeReelImpl> get copyWith =>
      __$$UnlikeReelImplCopyWithImpl<_$UnlikeReelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return unlikeReel(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return unlikeReel?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (unlikeReel != null) {
      return unlikeReel(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return unlikeReel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return unlikeReel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (unlikeReel != null) {
      return unlikeReel(this);
    }
    return orElse();
  }
}

abstract class _UnlikeReel implements ReelsEvent {
  const factory _UnlikeReel(final String id) = _$UnlikeReelImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$UnlikeReelImplCopyWith<_$UnlikeReelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReplyReelImplCopyWith<$Res> {
  factory _$$ReplyReelImplCopyWith(
          _$ReplyReelImpl value, $Res Function(_$ReplyReelImpl) then) =
      __$$ReplyReelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String comment});
}

/// @nodoc
class __$$ReplyReelImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$ReplyReelImpl>
    implements _$$ReplyReelImplCopyWith<$Res> {
  __$$ReplyReelImplCopyWithImpl(
      _$ReplyReelImpl _value, $Res Function(_$ReplyReelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
  }) {
    return _then(_$ReplyReelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReplyReelImpl implements _ReplyReel {
  const _$ReplyReelImpl(this.id, this.comment);

  @override
  final String id;
  @override
  final String comment;

  @override
  String toString() {
    return 'ReelsEvent.replyReel(id: $id, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyReelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyReelImplCopyWith<_$ReplyReelImpl> get copyWith =>
      __$$ReplyReelImplCopyWithImpl<_$ReplyReelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return replyReel(id, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return replyReel?.call(id, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (replyReel != null) {
      return replyReel(id, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return replyReel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return replyReel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (replyReel != null) {
      return replyReel(this);
    }
    return orElse();
  }
}

abstract class _ReplyReel implements ReelsEvent {
  const factory _ReplyReel(final String id, final String comment) =
      _$ReplyReelImpl;

  String get id;
  String get comment;
  @JsonKey(ignore: true)
  _$$ReplyReelImplCopyWith<_$ReplyReelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareReelImplCopyWith<$Res> {
  factory _$$ShareReelImplCopyWith(
          _$ShareReelImpl value, $Res Function(_$ShareReelImpl) then) =
      __$$ShareReelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ShareReelImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$ShareReelImpl>
    implements _$$ShareReelImplCopyWith<$Res> {
  __$$ShareReelImplCopyWithImpl(
      _$ShareReelImpl _value, $Res Function(_$ShareReelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ShareReelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShareReelImpl implements _ShareReel {
  const _$ShareReelImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ReelsEvent.shareReel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareReelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareReelImplCopyWith<_$ShareReelImpl> get copyWith =>
      __$$ShareReelImplCopyWithImpl<_$ShareReelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReels,
    required TResult Function() refreshReels,
    required TResult Function() loadMoreReels,
    required TResult Function(String id, int indexPage) viewReel,
    required TResult Function() createReel,
    required TResult Function() getMyReels,
    required TResult Function(String id) deleteReel,
    required TResult Function(String id, int index) addFavReel,
    required TResult Function(String id) unlikeReel,
    required TResult Function(String id, String comment) replyReel,
    required TResult Function(String id) shareReel,
  }) {
    return shareReel(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReels,
    TResult? Function()? refreshReels,
    TResult? Function()? loadMoreReels,
    TResult? Function(String id, int indexPage)? viewReel,
    TResult? Function()? createReel,
    TResult? Function()? getMyReels,
    TResult? Function(String id)? deleteReel,
    TResult? Function(String id, int index)? addFavReel,
    TResult? Function(String id)? unlikeReel,
    TResult? Function(String id, String comment)? replyReel,
    TResult? Function(String id)? shareReel,
  }) {
    return shareReel?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReels,
    TResult Function()? refreshReels,
    TResult Function()? loadMoreReels,
    TResult Function(String id, int indexPage)? viewReel,
    TResult Function()? createReel,
    TResult Function()? getMyReels,
    TResult Function(String id)? deleteReel,
    TResult Function(String id, int index)? addFavReel,
    TResult Function(String id)? unlikeReel,
    TResult Function(String id, String comment)? replyReel,
    TResult Function(String id)? shareReel,
    required TResult orElse(),
  }) {
    if (shareReel != null) {
      return shareReel(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReels value) getReels,
    required TResult Function(_RefreshReels value) refreshReels,
    required TResult Function(_LoadMoreReels value) loadMoreReels,
    required TResult Function(_ViewReel value) viewReel,
    required TResult Function(_CreateReel value) createReel,
    required TResult Function(_GetMyReels value) getMyReels,
    required TResult Function(_DeleteReel value) deleteReel,
    required TResult Function(_AddFavReel value) addFavReel,
    required TResult Function(_UnlikeReel value) unlikeReel,
    required TResult Function(_ReplyReel value) replyReel,
    required TResult Function(_ShareReel value) shareReel,
  }) {
    return shareReel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReels value)? getReels,
    TResult? Function(_RefreshReels value)? refreshReels,
    TResult? Function(_LoadMoreReels value)? loadMoreReels,
    TResult? Function(_ViewReel value)? viewReel,
    TResult? Function(_CreateReel value)? createReel,
    TResult? Function(_GetMyReels value)? getMyReels,
    TResult? Function(_DeleteReel value)? deleteReel,
    TResult? Function(_AddFavReel value)? addFavReel,
    TResult? Function(_UnlikeReel value)? unlikeReel,
    TResult? Function(_ReplyReel value)? replyReel,
    TResult? Function(_ShareReel value)? shareReel,
  }) {
    return shareReel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReels value)? getReels,
    TResult Function(_RefreshReels value)? refreshReels,
    TResult Function(_LoadMoreReels value)? loadMoreReels,
    TResult Function(_ViewReel value)? viewReel,
    TResult Function(_CreateReel value)? createReel,
    TResult Function(_GetMyReels value)? getMyReels,
    TResult Function(_DeleteReel value)? deleteReel,
    TResult Function(_AddFavReel value)? addFavReel,
    TResult Function(_UnlikeReel value)? unlikeReel,
    TResult Function(_ReplyReel value)? replyReel,
    TResult Function(_ShareReel value)? shareReel,
    required TResult orElse(),
  }) {
    if (shareReel != null) {
      return shareReel(this);
    }
    return orElse();
  }
}

abstract class _ShareReel implements ReelsEvent {
  const factory _ShareReel(final String id) = _$ShareReelImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$ShareReelImplCopyWith<_$ShareReelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReelsState {
  ReelsModel? get reels => throw _privateConstructorUsedError;
  MyReelsModel? get myReels => throw _privateConstructorUsedError;
  ReelsStatus get status => throw _privateConstructorUsedError;
  LikeReelStatus get likeReelStatus => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReelsStateCopyWith<ReelsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelsStateCopyWith<$Res> {
  factory $ReelsStateCopyWith(
          ReelsState value, $Res Function(ReelsState) then) =
      _$ReelsStateCopyWithImpl<$Res, ReelsState>;
  @useResult
  $Res call(
      {ReelsModel? reels,
      MyReelsModel? myReels,
      ReelsStatus status,
      LikeReelStatus likeReelStatus,
      int page});
}

/// @nodoc
class _$ReelsStateCopyWithImpl<$Res, $Val extends ReelsState>
    implements $ReelsStateCopyWith<$Res> {
  _$ReelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reels = freezed,
    Object? myReels = freezed,
    Object? status = null,
    Object? likeReelStatus = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      reels: freezed == reels
          ? _value.reels
          : reels // ignore: cast_nullable_to_non_nullable
              as ReelsModel?,
      myReels: freezed == myReels
          ? _value.myReels
          : myReels // ignore: cast_nullable_to_non_nullable
              as MyReelsModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReelsStatus,
      likeReelStatus: null == likeReelStatus
          ? _value.likeReelStatus
          : likeReelStatus // ignore: cast_nullable_to_non_nullable
              as LikeReelStatus,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReelsStateImplCopyWith<$Res>
    implements $ReelsStateCopyWith<$Res> {
  factory _$$ReelsStateImplCopyWith(
          _$ReelsStateImpl value, $Res Function(_$ReelsStateImpl) then) =
      __$$ReelsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReelsModel? reels,
      MyReelsModel? myReels,
      ReelsStatus status,
      LikeReelStatus likeReelStatus,
      int page});
}

/// @nodoc
class __$$ReelsStateImplCopyWithImpl<$Res>
    extends _$ReelsStateCopyWithImpl<$Res, _$ReelsStateImpl>
    implements _$$ReelsStateImplCopyWith<$Res> {
  __$$ReelsStateImplCopyWithImpl(
      _$ReelsStateImpl _value, $Res Function(_$ReelsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reels = freezed,
    Object? myReels = freezed,
    Object? status = null,
    Object? likeReelStatus = null,
    Object? page = null,
  }) {
    return _then(_$ReelsStateImpl(
      reels: freezed == reels
          ? _value.reels
          : reels // ignore: cast_nullable_to_non_nullable
              as ReelsModel?,
      myReels: freezed == myReels
          ? _value.myReels
          : myReels // ignore: cast_nullable_to_non_nullable
              as MyReelsModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReelsStatus,
      likeReelStatus: null == likeReelStatus
          ? _value.likeReelStatus
          : likeReelStatus // ignore: cast_nullable_to_non_nullable
              as LikeReelStatus,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReelsStateImpl implements _ReelsState {
  const _$ReelsStateImpl(
      {this.reels = null,
      this.myReels = null,
      this.status = ReelsStatus.initial,
      this.likeReelStatus = LikeReelStatus.initial,
      this.page = 0});

  @override
  @JsonKey()
  final ReelsModel? reels;
  @override
  @JsonKey()
  final MyReelsModel? myReels;
  @override
  @JsonKey()
  final ReelsStatus status;
  @override
  @JsonKey()
  final LikeReelStatus likeReelStatus;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'ReelsState(reels: $reels, myReels: $myReels, status: $status, likeReelStatus: $likeReelStatus, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReelsStateImpl &&
            (identical(other.reels, reels) || other.reels == reels) &&
            (identical(other.myReels, myReels) || other.myReels == myReels) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.likeReelStatus, likeReelStatus) ||
                other.likeReelStatus == likeReelStatus) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, reels, myReels, status, likeReelStatus, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReelsStateImplCopyWith<_$ReelsStateImpl> get copyWith =>
      __$$ReelsStateImplCopyWithImpl<_$ReelsStateImpl>(this, _$identity);
}

abstract class _ReelsState implements ReelsState {
  const factory _ReelsState(
      {final ReelsModel? reels,
      final MyReelsModel? myReels,
      final ReelsStatus status,
      final LikeReelStatus likeReelStatus,
      final int page}) = _$ReelsStateImpl;

  @override
  ReelsModel? get reels;
  @override
  MyReelsModel? get myReels;
  @override
  ReelsStatus get status;
  @override
  LikeReelStatus get likeReelStatus;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$ReelsStateImplCopyWith<_$ReelsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
