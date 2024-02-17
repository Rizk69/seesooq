// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationState {
  List<NotificationModel> get notificationUser =>
      throw _privateConstructorUsedError;
  List<NotificationModel> get unreadNotifications =>
      throw _privateConstructorUsedError;
  bool get loadingMore => throw _privateConstructorUsedError;
  NotificationStatus get notificationStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {List<NotificationModel> notificationUser,
      List<NotificationModel> unreadNotifications,
      bool loadingMore,
      NotificationStatus notificationStatus});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationUser = null,
    Object? unreadNotifications = null,
    Object? loadingMore = null,
    Object? notificationStatus = null,
  }) {
    return _then(_value.copyWith(
      notificationUser: null == notificationUser
          ? _value.notificationUser
          : notificationUser // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      unreadNotifications: null == unreadNotifications
          ? _value.unreadNotifications
          : unreadNotifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationStatus: null == notificationStatus
          ? _value.notificationStatus
          : notificationStatus // ignore: cast_nullable_to_non_nullable
              as NotificationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationModel> notificationUser,
      List<NotificationModel> unreadNotifications,
      bool loadingMore,
      NotificationStatus notificationStatus});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationUser = null,
    Object? unreadNotifications = null,
    Object? loadingMore = null,
    Object? notificationStatus = null,
  }) {
    return _then(_$NotificationStateImpl(
      notificationUser: null == notificationUser
          ? _value._notificationUser
          : notificationUser // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      unreadNotifications: null == unreadNotifications
          ? _value._unreadNotifications
          : unreadNotifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationStatus: null == notificationStatus
          ? _value.notificationStatus
          : notificationStatus // ignore: cast_nullable_to_non_nullable
              as NotificationStatus,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl
    with DiagnosticableTreeMixin
    implements _NotificationState {
  const _$NotificationStateImpl(
      {final List<NotificationModel> notificationUser = const [],
      final List<NotificationModel> unreadNotifications = const [],
      this.loadingMore = false,
      this.notificationStatus = NotificationStatus.initial})
      : _notificationUser = notificationUser,
        _unreadNotifications = unreadNotifications;

  final List<NotificationModel> _notificationUser;
  @override
  @JsonKey()
  List<NotificationModel> get notificationUser {
    if (_notificationUser is EqualUnmodifiableListView)
      return _notificationUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationUser);
  }

  final List<NotificationModel> _unreadNotifications;
  @override
  @JsonKey()
  List<NotificationModel> get unreadNotifications {
    if (_unreadNotifications is EqualUnmodifiableListView)
      return _unreadNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unreadNotifications);
  }

  @override
  @JsonKey()
  final bool loadingMore;
  @override
  @JsonKey()
  final NotificationStatus notificationStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState(notificationUser: $notificationUser, unreadNotifications: $unreadNotifications, loadingMore: $loadingMore, notificationStatus: $notificationStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState'))
      ..add(DiagnosticsProperty('notificationUser', notificationUser))
      ..add(DiagnosticsProperty('unreadNotifications', unreadNotifications))
      ..add(DiagnosticsProperty('loadingMore', loadingMore))
      ..add(DiagnosticsProperty('notificationStatus', notificationStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notificationUser, _notificationUser) &&
            const DeepCollectionEquality()
                .equals(other._unreadNotifications, _unreadNotifications) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore) &&
            (identical(other.notificationStatus, notificationStatus) ||
                other.notificationStatus == notificationStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notificationUser),
      const DeepCollectionEquality().hash(_unreadNotifications),
      loadingMore,
      notificationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {final List<NotificationModel> notificationUser,
      final List<NotificationModel> unreadNotifications,
      final bool loadingMore,
      final NotificationStatus notificationStatus}) = _$NotificationStateImpl;

  @override
  List<NotificationModel> get notificationUser;
  @override
  List<NotificationModel> get unreadNotifications;
  @override
  bool get loadingMore;
  @override
  NotificationStatus get notificationStatus;
  @override
  @JsonKey(ignore: true)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
