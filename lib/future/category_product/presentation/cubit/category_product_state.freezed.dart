// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryProductState {
  List<CategoryDataModel> get categoryProduct =>
      throw _privateConstructorUsedError;
  CategoryProductStatus get categoryProductStatus =>
      throw _privateConstructorUsedError;
  AttributesAdsStatus get attributesAdsStatus =>
      throw _privateConstructorUsedError;
  AttributesAdsModel? get attributesAdsModel =>
      throw _privateConstructorUsedError;
  String get selectedSubCategory => throw _privateConstructorUsedError;
  List<XFile?> get images => throw _privateConstructorUsedError;
  bool get loadingMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryProductStateCopyWith<CategoryProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductStateCopyWith<$Res> {
  factory $CategoryProductStateCopyWith(CategoryProductState value,
          $Res Function(CategoryProductState) then) =
      _$CategoryProductStateCopyWithImpl<$Res, CategoryProductState>;
  @useResult
  $Res call(
      {List<CategoryDataModel> categoryProduct,
      CategoryProductStatus categoryProductStatus,
      AttributesAdsStatus attributesAdsStatus,
      AttributesAdsModel? attributesAdsModel,
      String selectedSubCategory,
      List<XFile?> images,
      bool loadingMore});
}

/// @nodoc
class _$CategoryProductStateCopyWithImpl<$Res,
        $Val extends CategoryProductState>
    implements $CategoryProductStateCopyWith<$Res> {
  _$CategoryProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProduct = null,
    Object? categoryProductStatus = null,
    Object? attributesAdsStatus = null,
    Object? attributesAdsModel = freezed,
    Object? selectedSubCategory = null,
    Object? images = null,
    Object? loadingMore = null,
  }) {
    return _then(_value.copyWith(
      categoryProduct: null == categoryProduct
          ? _value.categoryProduct
          : categoryProduct // ignore: cast_nullable_to_non_nullable
              as List<CategoryDataModel>,
      categoryProductStatus: null == categoryProductStatus
          ? _value.categoryProductStatus
          : categoryProductStatus // ignore: cast_nullable_to_non_nullable
              as CategoryProductStatus,
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
              as List<XFile?>,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryProductStateImplCopyWith<$Res>
    implements $CategoryProductStateCopyWith<$Res> {
  factory _$$CategoryProductStateImplCopyWith(_$CategoryProductStateImpl value,
          $Res Function(_$CategoryProductStateImpl) then) =
      __$$CategoryProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryDataModel> categoryProduct,
      CategoryProductStatus categoryProductStatus,
      AttributesAdsStatus attributesAdsStatus,
      AttributesAdsModel? attributesAdsModel,
      String selectedSubCategory,
      List<XFile?> images,
      bool loadingMore});
}

/// @nodoc
class __$$CategoryProductStateImplCopyWithImpl<$Res>
    extends _$CategoryProductStateCopyWithImpl<$Res, _$CategoryProductStateImpl>
    implements _$$CategoryProductStateImplCopyWith<$Res> {
  __$$CategoryProductStateImplCopyWithImpl(_$CategoryProductStateImpl _value,
      $Res Function(_$CategoryProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProduct = null,
    Object? categoryProductStatus = null,
    Object? attributesAdsStatus = null,
    Object? attributesAdsModel = freezed,
    Object? selectedSubCategory = null,
    Object? images = null,
    Object? loadingMore = null,
  }) {
    return _then(_$CategoryProductStateImpl(
      categoryProduct: null == categoryProduct
          ? _value._categoryProduct
          : categoryProduct // ignore: cast_nullable_to_non_nullable
              as List<CategoryDataModel>,
      categoryProductStatus: null == categoryProductStatus
          ? _value.categoryProductStatus
          : categoryProductStatus // ignore: cast_nullable_to_non_nullable
              as CategoryProductStatus,
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
              as List<XFile?>,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CategoryProductStateImpl implements _CategoryProductState {
  const _$CategoryProductStateImpl(
      {final List<CategoryDataModel> categoryProduct = const [],
      this.categoryProductStatus = CategoryProductStatus.initial,
      this.attributesAdsStatus = AttributesAdsStatus.initial,
      this.attributesAdsModel = null,
      this.selectedSubCategory = '',
      final List<XFile?> images = const [],
      this.loadingMore = false})
      : _categoryProduct = categoryProduct,
        _images = images;

  final List<CategoryDataModel> _categoryProduct;
  @override
  @JsonKey()
  List<CategoryDataModel> get categoryProduct {
    if (_categoryProduct is EqualUnmodifiableListView) return _categoryProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryProduct);
  }

  @override
  @JsonKey()
  final CategoryProductStatus categoryProductStatus;
  @override
  @JsonKey()
  final AttributesAdsStatus attributesAdsStatus;
  @override
  @JsonKey()
  final AttributesAdsModel? attributesAdsModel;
  @override
  @JsonKey()
  final String selectedSubCategory;
  final List<XFile?> _images;
  @override
  @JsonKey()
  List<XFile?> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final bool loadingMore;

  @override
  String toString() {
    return 'CategoryProductState(categoryProduct: $categoryProduct, categoryProductStatus: $categoryProductStatus, attributesAdsStatus: $attributesAdsStatus, attributesAdsModel: $attributesAdsModel, selectedSubCategory: $selectedSubCategory, images: $images, loadingMore: $loadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryProduct, _categoryProduct) &&
            (identical(other.categoryProductStatus, categoryProductStatus) ||
                other.categoryProductStatus == categoryProductStatus) &&
            (identical(other.attributesAdsStatus, attributesAdsStatus) ||
                other.attributesAdsStatus == attributesAdsStatus) &&
            (identical(other.attributesAdsModel, attributesAdsModel) ||
                other.attributesAdsModel == attributesAdsModel) &&
            (identical(other.selectedSubCategory, selectedSubCategory) ||
                other.selectedSubCategory == selectedSubCategory) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryProduct),
      categoryProductStatus,
      attributesAdsStatus,
      attributesAdsModel,
      selectedSubCategory,
      const DeepCollectionEquality().hash(_images),
      loadingMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductStateImplCopyWith<_$CategoryProductStateImpl>
      get copyWith =>
          __$$CategoryProductStateImplCopyWithImpl<_$CategoryProductStateImpl>(
              this, _$identity);
}

abstract class _CategoryProductState implements CategoryProductState {
  const factory _CategoryProductState(
      {final List<CategoryDataModel> categoryProduct,
      final CategoryProductStatus categoryProductStatus,
      final AttributesAdsStatus attributesAdsStatus,
      final AttributesAdsModel? attributesAdsModel,
      final String selectedSubCategory,
      final List<XFile?> images,
      final bool loadingMore}) = _$CategoryProductStateImpl;

  @override
  List<CategoryDataModel> get categoryProduct;
  @override
  CategoryProductStatus get categoryProductStatus;
  @override
  AttributesAdsStatus get attributesAdsStatus;
  @override
  AttributesAdsModel? get attributesAdsModel;
  @override
  String get selectedSubCategory;
  @override
  List<XFile?> get images;
  @override
  bool get loadingMore;
  @override
  @JsonKey(ignore: true)
  _$$CategoryProductStateImplCopyWith<_$CategoryProductStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
