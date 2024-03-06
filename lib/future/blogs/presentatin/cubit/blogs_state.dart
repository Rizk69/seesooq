import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/blogs/data/model/blog_model.dart';
import 'package:opensooq/future/blogs/data/model/one_blog/one_blog_model.dart';

part 'blogs_state.freezed.dart';

enum BlogsStatus { initial, loading, loaded, error }

enum OneBlogsStatus { initial, loading, loaded, error }

@freezed
class BlogsState with _$BlogsState {
  const factory BlogsState({
    @Default(null) BlogModel? allBlogs,
    @Default(BlogsStatus.initial) BlogsStatus status,
    @Default(OneBlogsStatus.initial) OneBlogsStatus onBlogStatus,
    @Default(null) OneBlogModel? blog,
  }) = _BlogsState;
}
