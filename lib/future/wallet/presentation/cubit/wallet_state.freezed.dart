// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletState {
  WalletModel? get walletModel => throw _privateConstructorUsedError;
  StorePaymentModel? get storePaymentModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
  @useResult
  $Res call({WalletModel? walletModel, StorePaymentModel? storePaymentModel});
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletModel = freezed,
    Object? storePaymentModel = freezed,
  }) {
    return _then(_value.copyWith(
      walletModel: freezed == walletModel
          ? _value.walletModel
          : walletModel // ignore: cast_nullable_to_non_nullable
              as WalletModel?,
      storePaymentModel: freezed == storePaymentModel
          ? _value.storePaymentModel
          : storePaymentModel // ignore: cast_nullable_to_non_nullable
              as StorePaymentModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletStateImplCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$WalletStateImplCopyWith(
          _$WalletStateImpl value, $Res Function(_$WalletStateImpl) then) =
      __$$WalletStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WalletModel? walletModel, StorePaymentModel? storePaymentModel});
}

/// @nodoc
class __$$WalletStateImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletStateImpl>
    implements _$$WalletStateImplCopyWith<$Res> {
  __$$WalletStateImplCopyWithImpl(
      _$WalletStateImpl _value, $Res Function(_$WalletStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletModel = freezed,
    Object? storePaymentModel = freezed,
  }) {
    return _then(_$WalletStateImpl(
      walletModel: freezed == walletModel
          ? _value.walletModel
          : walletModel // ignore: cast_nullable_to_non_nullable
              as WalletModel?,
      storePaymentModel: freezed == storePaymentModel
          ? _value.storePaymentModel
          : storePaymentModel // ignore: cast_nullable_to_non_nullable
              as StorePaymentModel?,
    ));
  }
}

/// @nodoc

class _$WalletStateImpl implements _WalletState {
  const _$WalletStateImpl(
      {this.walletModel = null, this.storePaymentModel = null});

  @override
  @JsonKey()
  final WalletModel? walletModel;
  @override
  @JsonKey()
  final StorePaymentModel? storePaymentModel;

  @override
  String toString() {
    return 'WalletState(walletModel: $walletModel, storePaymentModel: $storePaymentModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStateImpl &&
            (identical(other.walletModel, walletModel) ||
                other.walletModel == walletModel) &&
            (identical(other.storePaymentModel, storePaymentModel) ||
                other.storePaymentModel == storePaymentModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletModel, storePaymentModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      __$$WalletStateImplCopyWithImpl<_$WalletStateImpl>(this, _$identity);
}

abstract class _WalletState implements WalletState {
  const factory _WalletState(
      {final WalletModel? walletModel,
      final StorePaymentModel? storePaymentModel}) = _$WalletStateImpl;

  @override
  WalletModel? get walletModel;
  @override
  StorePaymentModel? get storePaymentModel;
  @override
  @JsonKey(ignore: true)
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
