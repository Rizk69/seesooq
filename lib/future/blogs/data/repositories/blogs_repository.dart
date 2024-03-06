import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/blogs/data/model/one_blog/one_blog_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

import '../data_sorces/blogs_remote_data_sorces.dart';
import '../model/blog_model.dart';

abstract class BlogsRepository {
  Future<Either<Failures, BlogModel>> getAllBlogs();
  Future<Either<Failures, OneBlogModel>> getDetailsBlog({required int id});
}

@LazySingleton(as: BlogsRepository)
class BlogsRepositoryImpl implements BlogsRepository {
  final BlogsRemoteDataSource blogsRemoteDataSource;

  BlogsRepositoryImpl(this.blogsRemoteDataSource);

  @override
  Future<Either<Failures, BlogModel>> getAllBlogs() async {
    return executeAndCatchError<BlogModel>(() async => await blogsRemoteDataSource.getAllBlogs());
  }

  @override
  Future<Either<Failures, OneBlogModel>> getDetailsBlog({required int id}) async {
    return executeAndCatchError<OneBlogModel>(() async => await blogsRemoteDataSource.getDetailsBlog(id: id));
  }
}
