import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/blogs/data/model/one_blog/one_blog_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../future/blogs/data/model/blog_model.dart';
import '../../api/end_point.dart';

part 'blogs_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class BlogsApi {
  @factoryMethod
  factory BlogsApi(Dio dio) = _BlogsApi;

  @GET(EndPoint.getAllBlogs)
  Future<BlogModel> getAllBlogs();

  @GET(EndPoint.getDetailsBlog)
  Future<OneBlogModel> getDetailsBlog({@Path() required int id});
}
