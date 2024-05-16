import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/reels_api.dart';
import 'package:opensooq/future/reels/data/model/my_reels_model.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';

abstract class ReelsRemoteDataSource {
  Future<ReelsModel> getReels();
  Future<MyReelsModel> getMyReels();
  Future<void> likeReel({required String id});
  Future<void> viewReel({required String id});

  Future<void> createReel({
    required String video,
    required String description,
  });

  Future<void> deleteReel({required String id});
}

@LazySingleton(as: ReelsRemoteDataSource)
class ReelsRemoteDataSourceImpl extends ReelsRemoteDataSource {
  final ReelsApi api;

  ReelsRemoteDataSourceImpl(this.api);
  @override
  Future<ReelsModel> getReels() async {
    return await api.getReels();
  }

  @override
  Future<MyReelsModel> getMyReels() async {
    return await api.getMyReels();
  }

  @override
  Future<void> viewReel({required String id}) async {
    return await api.viewReel(id: id);
  }

  @override
  Future<void> createReel({required String video, required String description}) async {
    String fileName = video.split('/').last;
    FormData formData = FormData.fromMap({
      "video": await MultipartFile.fromFile(video, filename: fileName),
    });

    return await api.createReel(body: formData ?? {});
  }

  @override
  Future<void> deleteReel({required String id}) {
    return api.deleteReel(id: id);
  }

  @override
  Future<void> likeReel({required String id}) {
    return api.likeReel(id: id);
  }
}
