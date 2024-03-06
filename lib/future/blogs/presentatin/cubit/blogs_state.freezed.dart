// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blogs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlogsState {
  BlogModel? get allBlogs => throw _privateConstructorUsedError;
  BlogsStatus get status => throw _privateConstructorUsedError;
  OneBlogsStatus get onBlogStatus => throw _privateConstructorUsedError;
  OneBlogModel? get blog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogsStateCopyWith<BlogsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsStateCopyWith<$Res> {
  factory $BlogsStateCopyWith(
          BlogsState value, $Res Function(BlogsState) then) =
      _$BlogsStateCopyWithImpl<$Res, BlogsState>;
  @useResult
  $Res call(
      {BlogModel? allBlogs,
      BlogsStatus status,
      OneBlogsStatus onBlogStatus,
      OneBlogModel? blog});
}

/// @nodoc
class _$BlogsStateCopyWithImpl<$Res, $Val extends BlogsState>
    implements $BlogsStateCopyWith<$Res> {
  _$BlogsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allBlogs = freezed,
    Object? status = null,
    Object? onBlogStatus = null,
    Object? blog = freezed,
  }) {
    return _then(_value.copyWith(
      allBlogs: freezed == allBlogs
          ? _value.allBlogs
          : allBlogs // ignore: cast_nullable_to_non_nullable
              as BlogModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlogsStatus,
      onBlogStatus: null == onBlogStatus
          ? _value.onBlogStatus
          : onBlogStatus // ignore: cast_nullable_to_non_nullable
              as OneBlogsStatus,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as OneBlogModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogsStateImplCopyWith<$Res>
    implements $BlogsStateCopyWith<$Res> {
  factory _$$BlogsStateImplCopyWith(
          _$BlogsStateImpl value, $Res Function(_$BlogsStateImpl) then) =
      __$$BlogsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlogModel? allBlogs,
      BlogsStatus status,
      OneBlogsStatus onBlogStatus,
      OneBlogModel? blog});
}

/// @nodoc
class __$$BlogsStateImplCopyWithImpl<$Res>
    extends _$BlogsStateCopyWithImpl<$Res, _$BlogsStateImpl>
    implements _$$BlogsStateImplCopyWith<$Res> {
  __$$BlogsStateImplCopyWithImpl(
      _$BlogsStateImpl _value, $Res Function(_$BlogsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allBlogs = freezed,
    Object? status = null,
    Object? onBlogStatus = null,
    Object? blog = freezed,
  }) {
    return _then(_$BlogsStateImpl(
      allBlogs: freezed == allBlogs
          ? _value.allBlogs
          : allBlogs // ignore: cast_nullable_to_non_nullable
              as BlogModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlogsStatus,
      onBlogStatus: null == onBlogStatus
          ? _value.onBlogStatus
          : onBlogStatus // ignore: cast_nullable_to_non_nullable
              as OneBlogsStatus,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as OneBlogModel?,
    ));
  }
}

/// @nodoc

class _$BlogsStateImpl implements _BlogsState {
  const _$BlogsStateImpl(
      {this.allBlogs = null,
      this.status = BlogsStatus.initial,
      this.onBlogStatus = OneBlogsStatus.initial,
      this.blog = null});

  @override
  @JsonKey()
  final BlogModel? allBlogs;
  @override
  @JsonKey()
  final BlogsStatus status;
  @override
  @JsonKey()
  final OneBlogsStatus onBlogStatus;
  @override
  @JsonKey()
  final OneBlogModel? blog;

  @override
  String toString() {
    return 'BlogsState(allBlogs: $allBlogs, status: $status, onBlogStatus: $onBlogStatus, blog: $blog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogsStateImpl &&
            (identical(other.allBlogs, allBlogs) ||
                other.allBlogs == allBlogs) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.onBlogStatus, onBlogStatus) ||
                other.onBlogStatus == onBlogStatus) &&
            (identical(other.blog, blog) || other.blog == blog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, allBlogs, status, onBlogStatus, blog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogsStateImplCopyWith<_$BlogsStateImpl> get copyWith =>
      __$$BlogsStateImplCopyWithImpl<_$BlogsStateImpl>(this, _$identity);
}

abstract class _BlogsState implements BlogsState {
  const factory _BlogsState(
      {final BlogModel? allBlogs,
      final BlogsStatus status,
      final OneBlogsStatus onBlogStatus,
      final OneBlogModel? blog}) = _$BlogsStateImpl;

  @override
  BlogModel? get allBlogs;
  @override
  BlogsStatus get status;
  @override
  OneBlogsStatus get onBlogStatus;
  @override
  OneBlogModel? get blog;
  @override
  @JsonKey(ignore: true)
  _$$BlogsStateImplCopyWith<_$BlogsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
