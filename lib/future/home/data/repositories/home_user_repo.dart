import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/core/network/network_info.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/home/data/data_sources/home_user_remote_data_source.dart';
import 'package:opensooq/future/home/data/models/my_story_model.dart';
import 'package:opensooq/future/home/data/models/single_advertisment_model.dart';
import 'package:opensooq/future/home/data/models/users_story_model.dart';
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart';

abstract class HomeUserRepo {
  Future<Either<Failures, String>> createMyStory({required String image, required String caption});
  Future<Either<Failures, String>> viewStory({required int storyId});
  Future<Either<Failures, MyStoryModel>> getMyStory();
  Future<Either<Failures, UsersStoryModel>> getUsersStory();

  Future<Either<Failures, AdvertisementModel>> getOfferAds({required int categoryId, required int page});

  Future<Either<Failures, void>> deleteMyStory({required int id});
  Future<Either<Failures, SingleAdvertismentModel>> showAdvertisement({required int id});
}

@LazySingleton(as: HomeUserRepo)
class HomeUserRepoImpl implements HomeUserRepo {
  final NetworkInfo networkInfo;
  final HomeUserRemoteDataSource homeUserRemoteDataSource;

  HomeUserRepoImpl(this.networkInfo, this.homeUserRemoteDataSource);

  @override
  Future<Either<Failures, String>> createMyStory({required String image, required String caption}) async {
    return executeAndCatchError(() async => await homeUserRemoteDataSource.createMyStory(image: image, caption: caption));
  }

  @override
  Future<Either<Failures, MyStoryModel>> getMyStory() async {
    return executeAndCatchError(() async => await homeUserRemoteDataSource.getMyStories());
  }

  @override
  Future<Either<Failures, void>> deleteMyStory({required int id}) async {
    return executeAndCatchError(() async => await homeUserRemoteDataSource.deleteMyStory(id: id));
  }

  @override
  Future<Either<Failures, UsersStoryModel>> getUsersStory() async {
    return executeAndCatchError(() async => await homeUserRemoteDataSource.getUsersStories());
  }

  @override
  Future<Either<Failures, AdvertisementModel>> getOfferAds({required int categoryId, required int page}) async {
    return executeAndCatchError(() async => await homeUserRemoteDataSource.getOfferAds(
          categoryId: categoryId,
          page: page,
        ));
  }

  @override
  Future<Either<Failures, String>> viewStory({required int storyId}) async {
    return executeAndCatchError(() async => await homeUserRemoteDataSource.viewStory(
          storyId: storyId,
        ));
  }

  @override
  Future<Either<Failures, SingleAdvertismentModel>> showAdvertisement({required int id}) async {
    return executeAndCatchError(() async => await homeUserRemoteDataSource.showAdvertisement(
          id: id,
        ));
  }
}
