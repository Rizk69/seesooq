import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/blogs_api.dart';
import 'package:opensooq/future/blogs/data/model/one_blog/one_blog_model.dart';

import '../model/blog_model.dart';

abstract class BlogsRemoteDataSource {
  Future<BlogModel> getAllBlogs();
  Future<OneBlogModel> getDetailsBlog({required int id});
}

@LazySingleton(as: BlogsRemoteDataSource)
class BlogsRemoteDataSourceImpl implements BlogsRemoteDataSource {
  final BlogsApi api;

  BlogsRemoteDataSourceImpl(this.api);

  @override
  Future<BlogModel> getAllBlogs() async {
    // TODO: implement getAllNew
    return await api.getAllBlogs();
  }

  @override
  Future<OneBlogModel> getDetailsBlog({required int id}) async {
    // TODO: implement getNew
    return await api.getDetailsBlog(id: id);
  }
}
