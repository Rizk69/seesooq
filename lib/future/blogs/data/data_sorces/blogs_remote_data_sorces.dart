import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/blogs_api.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';

import '../model/blog_model.dart';


abstract class BlogsRemoteDataSource {
  Future<BlogModel> getAllBlogs();
  Future<BlogModel> getDetailsBlog({required int id});
}

@LazySingleton(as: BlogsRemoteDataSource)
class BlogsRemoteDataSourceImpl implements BlogsRemoteDataSource {
  final BlogsApi api;

  BlogsRemoteDataSourceImpl(this.api);



  @override
  Future<BlogModel> getAllBlogs()async {
    // TODO: implement getAllNew
    return await api.getAllBlogs();
  }

  @override
  Future<BlogModel> getDetailsBlog({required int id})async {
    // TODO: implement getNew
    return await api.getDetailsBlog(idf: id);
  }
}
