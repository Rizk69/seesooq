import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/api/end_point.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/home/data/models/banners_model.dart';
import 'package:opensooq/future/home/data/models/my_story_model.dart';
import 'package:opensooq/future/home/data/models/single_advertisment_model.dart';
import 'package:opensooq/future/home/data/models/users_story_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_user_api.g.dart';

@injectable
@RestApi(parser: Parser.FlutterCompute)
abstract class HomeUserApi {
  @factoryMethod
  factory HomeUserApi(
    Dio dio,
  ) = _HomeUserApi;

  @POST(EndPoint.createMyStory)
  Future<String> createMyStory({
    @Body() required dynamic body,
  });
  @GET(EndPoint.viewStory)
  Future<String> viewStory({
    @Path() required int storyId,
  });
  @GET(EndPoint.showAdvertisment)
  Future<SingleAdvertismentModel> showAdvertisment({
    @Path() required int id,
  });

  @GET(EndPoint.getMyStories)
  Future<MyStoryModel> getMyStories();

  @GET(EndPoint.deleteMyStory)
  Future<void> deleteMyStory({
    @Path() required int storyId,
  });

  @GET(EndPoint.getUsersStory)
  Future<UsersStoryModel> getUsersStory();

  @GET(EndPoint.getOfferAds)
  Future<AdvertisementModel> getOfferAds({@Path() required int categoryId, @Query('page') required int page});
  @GET(EndPoint.getBanners)
  Future<BannersModel> getBanners({@Query('page') required int page});

// @POST(EndPoint.markNotificationAsRead)
// Future<NotificationResponseModel> markNotificationAsRead({
//   @Field('id') required String id,
// });
}
