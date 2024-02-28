import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/home_user_api.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/home/data/models/my_story_model.dart';
import 'package:opensooq/future/home/data/models/single_advertisment_model.dart';
import 'package:opensooq/future/home/data/models/users_story_model.dart';

abstract class HomeUserRemoteDataSource {
  Future<String> createMyStory({required String image, required String caption});
  Future<String> viewStory({required int storyId});

  Future<MyStoryModel> getMyStories();
  Future<UsersStoryModel> getUsersStories();
  Future<AdvertisementModel> getOfferAds({required int categoryId, required int page});
  Future<void> deleteMyStory({required int id});
  Future<SingleAdvertismentModel> showAdvertisement({required int id});
}

@LazySingleton(as: HomeUserRemoteDataSource)
class HomeUserRemoteDataSourceImpl implements HomeUserRemoteDataSource {
  final HomeUserApi homeUserApi;

  HomeUserRemoteDataSourceImpl(this.homeUserApi);

  @override
  Future<String> createMyStory({required String image, required String caption}) async {
    MultipartFile? logo;
    if (image.isNotEmpty) {
      var file = File(image);
      logo = await MultipartFile.fromFile(
        image,
        filename: file.uri.path.split('/').last,
      );
    }

    FormData formData = FormData.fromMap({
      "story": logo,
      "description": caption,
    });
    return homeUserApi.createMyStory(body: formData ?? {});
  }

  @override
  Future<MyStoryModel> getMyStories() async {
    return homeUserApi.getMyStories();
  }

  @override
  Future<void> deleteMyStory({required int id}) async {
    return homeUserApi.deleteMyStory(storyId: id);
  }

  @override
  Future<UsersStoryModel> getUsersStories() async {
    return homeUserApi.getUsersStory();
  }

  @override
  Future<AdvertisementModel> getOfferAds({required int categoryId, required int page}) async {
    return homeUserApi.getOfferAds(page: page, categoryId: categoryId);
  }

  @override
  Future<String> viewStory({required int storyId}) async {
    return homeUserApi.viewStory(storyId: storyId);
  }

  @override
  Future<SingleAdvertismentModel> showAdvertisement({required int id}) async {
    return homeUserApi.showAdvertisment(
      id: id,
    );
  }
}
