// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryState {
  List<CategoryDataModel> get category => throw _privateConstructorUsedError;
  CategoryStatus get categoryStatus => throw _privateConstructorUsedError;
  List<XFile?> get images => throw _privateConstructorUsedError;
  StatefulNavigationShell? get statefulNavigationShell =>
      throw _privateConstructorUsedError;
  bool get loadingMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {List<CategoryDataModel> category,
      CategoryStatus categoryStatus,
      List<XFile?> images,
      StatefulNavigationShell? statefulNavigationShell,
      bool loadingMore});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? categoryStatus = null,
    Object? images = null,
    Object? statefulNavigationShell = freezed,
    Object? loadingMore = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryDataModel>,
      categoryStatus: null == categoryStatus
          ? _value.categoryStatus
          : categoryStatus // ignore: cast_nullable_to_non_nullable
              as CategoryStatus,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile?>,
      statefulNavigationShell: freezed == statefulNavigationShell
          ? _value.statefulNavigationShell
          : statefulNavigationShell // ignore: cast_nullable_to_non_nullable
              as StatefulNavigationShell?,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateImplCopyWith(
          _$CategoryStateImpl value, $Res Function(_$CategoryStateImpl) then) =
      __$$CategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryDataModel> category,
      CategoryStatus categoryStatus,
      List<XFile?> images,
      StatefulNavigationShell? statefulNavigationShell,
      bool loadingMore});
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateImpl>
    implements _$$CategoryStateImplCopyWith<$Res> {
  __$$CategoryStateImplCopyWithImpl(
      _$CategoryStateImpl _value, $Res Function(_$CategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? categoryStatus = null,
    Object? images = null,
    Object? statefulNavigationShell = freezed,
    Object? loadingMore = null,
  }) {
    return _then(_$CategoryStateImpl(
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryDataModel>,
      categoryStatus: null == categoryStatus
          ? _value.categoryStatus
          : categoryStatus // ignore: cast_nullable_to_non_nullable
              as CategoryStatus,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile?>,
      statefulNavigationShell: freezed == statefulNavigationShell
          ? _value.statefulNavigationShell
          : statefulNavigationShell // ignore: cast_nullable_to_non_nullable
              as StatefulNavigationShell?,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl implements _CategoryState {
  const _$CategoryStateImpl(
      {final List<CategoryDataModel> category = const [],
      this.categoryStatus = CategoryStatus.initial,
      final List<XFile?> images = const [],
      this.statefulNavigationShell = null,
      this.loadingMore = false})
      : _category = category,
        _images = images;

  final List<CategoryDataModel> _category;
  @override
  @JsonKey()
  List<CategoryDataModel> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  @JsonKey()
  final CategoryStatus categoryStatus;
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
  final StatefulNavigationShell? statefulNavigationShell;
  @override
  @JsonKey()
  final bool loadingMore;

  @override
  String toString() {
    return 'CategoryState(category: $category, categoryStatus: $categoryStatus, images: $images, statefulNavigationShell: $statefulNavigationShell, loadingMore: $loadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.categoryStatus, categoryStatus) ||
                other.categoryStatus == categoryStatus) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(
                    other.statefulNavigationShell, statefulNavigationShell) ||
                other.statefulNavigationShell == statefulNavigationShell) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_category),
      categoryStatus,
      const DeepCollectionEquality().hash(_images),
      statefulNavigationShell,
      loadingMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<_$CategoryStateImpl>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {final List<CategoryDataModel> category,
      final CategoryStatus categoryStatus,
      final List<XFile?> images,
      final StatefulNavigationShell? statefulNavigationShell,
      final bool loadingMore}) = _$CategoryStateImpl;

  @override
  List<CategoryDataModel> get category;
  @override
  CategoryStatus get categoryStatus;
  @override
  List<XFile?> get images;
  @override
  StatefulNavigationShell? get statefulNavigationShell;
  @override
  bool get loadingMore;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
