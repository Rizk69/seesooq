import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/blogs/data/repositories/blogs_repository.dart';

import 'blogs_state.dart';

class BlogsCubit extends Cubit<BlogsState> {
  BlogsCubit() : super(const BlogsState());
  BlogsRepository blogsRepository = di.sl<BlogsRepository>();

  static BlogsCubit get(context) => BlocProvider.of(context);

  Future<void> getBlogs() async {
    emit(state.copyWith(status: BlogsStatus.loading));
    final blogs = await blogsRepository.getAllBlogs();
    blogs.fold(
      (l) => emit(state.copyWith(
        status: BlogsStatus.error,
      )),
      (r) => emit(
        state.copyWith(status: BlogsStatus.loaded, allBlogs: r),
      ),
    );
  }

  Future<void> getDescriptionBlog(int id) async {
    emit(state.copyWith(onBlogStatus: OneBlogsStatus.loading));
    final blogs = await blogsRepository.getDetailsBlog(id: id);
    blogs.fold(
      (l) => emit(state.copyWith(
        onBlogStatus: OneBlogsStatus.error,
      )),
      (r) => emit(
        state.copyWith(onBlogStatus: OneBlogsStatus.loaded, blog: r),
      ),
    );
  }
}
