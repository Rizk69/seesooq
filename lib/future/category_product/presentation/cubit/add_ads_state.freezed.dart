// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_ads_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddAdsState {
  AttributesAdsStatus get attributesAdsStatus =>
      throw _privateConstructorUsedError;
  AttributesAdsModel? get attributesAdsModel =>
      throw _privateConstructorUsedError;
  String get selectedSubCategory => throw _privateConstructorUsedError;
  List<ImageFile> get images => throw _privateConstructorUsedError;
  AttributesForm get attributesForm => throw _privateConstructorUsedError;
  bool get loadingMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAdsStateCopyWith<AddAdsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAdsStateCopyWith<$Res> {
  factory $AddAdsStateCopyWith(
          AddAdsState value, $Res Function(AddAdsState) then) =
      _$AddAdsStateCopyWithImpl<$Res, AddAdsState>;
  @useResult
  $Res call(
      {AttributesAdsStatus attributesAdsStatus,
      AttributesAdsModel? attributesAdsModel,
      String selectedSubCategory,
      List<ImageFile> images,
      AttributesForm attributesForm,
      bool loadingMore});

  $AttributesFormCopyWith<$Res> get attributesForm;
}

/// @nodoc
class _$AddAdsStateCopyWithImpl<$Res, $Val extends AddAdsState>
    implements $AddAdsStateCopyWith<$Res> {
  _$AddAdsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributesAdsStatus = null,
    Object? attributesAdsModel = freezed,
    Object? selectedSubCategory = null,
    Object? images = null,
    Object? attributesForm = null,
    Object? loadingMore = null,
  }) {
    return _then(_value.copyWith(
      attributesAdsStatus: null == attributesAdsStatus
          ? _value.attributesAdsStatus
          : attributesAdsStatus // ignore: cast_nullable_to_non_nullable
              as AttributesAdsStatus,
      attributesAdsModel: freezed == attributesAdsModel
          ? _value.attributesAdsModel
          : attributesAdsModel // ignore: cast_nullable_to_non_nullable
              as AttributesAdsModel?,
      selectedSubCategory: null == selectedSubCategory
          ? _value.selectedSubCategory
          : selectedSubCategory // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageFile>,
      attributesForm: null == attributesForm
          ? _value.attributesForm
          : attributesForm // ignore: cast_nullable_to_non_nullable
              as AttributesForm,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesFormCopyWith<$Res> get attributesForm {
    return $AttributesFormCopyWith<$Res>(_value.attributesForm, (value) {
      return _then(_value.copyWith(attributesForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddAdsStateImplCopyWith<$Res>
    implements $AddAdsStateCopyWith<$Res> {
  factory _$$AddAdsStateImplCopyWith(
          _$AddAdsStateImpl value, $Res Function(_$AddAdsStateImpl) then) =
      __$$AddAdsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AttributesAdsStatus attributesAdsStatus,
      AttributesAdsModel? attributesAdsModel,
      String selectedSubCategory,
      List<ImageFile> images,
      AttributesForm attributesForm,
      bool loadingMore});

  @override
  $AttributesFormCopyWith<$Res> get attributesForm;
}

/// @nodoc
class __$$AddAdsStateImplCopyWithImpl<$Res>
    extends _$AddAdsStateCopyWithImpl<$Res, _$AddAdsStateImpl>
    implements _$$AddAdsStateImplCopyWith<$Res> {
  __$$AddAdsStateImplCopyWithImpl(
      _$AddAdsStateImpl _value, $Res Function(_$AddAdsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributesAdsStatus = null,
    Object? attributesAdsModel = freezed,
    Object? selectedSubCategory = null,
    Object? images = null,
    Object? attributesForm = null,
    Object? loadingMore = null,
  }) {
    return _then(_$AddAdsStateImpl(
      attributesAdsStatus: null == attributesAdsStatus
          ? _value.attributesAdsStatus
          : attributesAdsStatus // ignore: cast_nullable_to_non_nullable
              as AttributesAdsStatus,
      attributesAdsModel: freezed == attributesAdsModel
          ? _value.attributesAdsModel
          : attributesAdsModel // ignore: cast_nullable_to_non_nullable
              as AttributesAdsModel?,
      selectedSubCategory: null == selectedSubCategory
          ? _value.selectedSubCategory
          : selectedSubCategory // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageFile>,
      attributesForm: null == attributesForm
          ? _value.attributesForm
          : attributesForm // ignore: cast_nullable_to_non_nullable
              as AttributesForm,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddAdsStateImpl implements _AddAdsState {
  const _$AddAdsStateImpl(
      {this.attributesAdsStatus = AttributesAdsStatus.initial,
      this.attributesAdsModel = null,
      this.selectedSubCategory = '',
      final List<ImageFile> images = const [],
      this.attributesForm = const AttributesForm(),
      this.loadingMore = false})
      : _images = images;

  @override
  @JsonKey()
  final AttributesAdsStatus attributesAdsStatus;
  @override
  @JsonKey()
  final AttributesAdsModel? attributesAdsModel;
  @override
  @JsonKey()
  final String selectedSubCategory;
  final List<ImageFile> _images;
  @override
  @JsonKey()
  List<ImageFile> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final AttributesForm attributesForm;
  @override
  @JsonKey()
  final bool loadingMore;

  @override
  String toString() {
    return 'AddAdsState(attributesAdsStatus: $attributesAdsStatus, attributesAdsModel: $attributesAdsModel, selectedSubCategory: $selectedSubCategory, images: $images, attributesForm: $attributesForm, loadingMore: $loadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAdsStateImpl &&
            (identical(other.attributesAdsStatus, attributesAdsStatus) ||
                other.attributesAdsStatus == attributesAdsStatus) &&
            (identical(other.attributesAdsModel, attributesAdsModel) ||
                other.attributesAdsModel == attributesAdsModel) &&
            (identical(other.selectedSubCategory, selectedSubCategory) ||
                other.selectedSubCategory == selectedSubCategory) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.attributesForm, attributesForm) ||
                other.attributesForm == attributesForm) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      attributesAdsStatus,
      attributesAdsModel,
      selectedSubCategory,
      const DeepCollectionEquality().hash(_images),
      attributesForm,
      loadingMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAdsStateImplCopyWith<_$AddAdsStateImpl> get copyWith =>
      __$$AddAdsStateImplCopyWithImpl<_$AddAdsStateImpl>(this, _$identity);
}

abstract class _AddAdsState implements AddAdsState {
  const factory _AddAdsState(
      {final AttributesAdsStatus attributesAdsStatus,
      final AttributesAdsModel? attributesAdsModel,
      final String selectedSubCategory,
      final List<ImageFile> images,
      final AttributesForm attributesForm,
      final bool loadingMore}) = _$AddAdsStateImpl;

  @override
  AttributesAdsStatus get attributesAdsStatus;
  @override
  AttributesAdsModel? get attributesAdsModel;
  @override
  String get selectedSubCategory;
  @override
  List<ImageFile> get images;
  @override
  AttributesForm get attributesForm;
  @override
  bool get loadingMore;
  @override
  @JsonKey(ignore: true)
  _$$AddAdsStateImplCopyWith<_$AddAdsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
