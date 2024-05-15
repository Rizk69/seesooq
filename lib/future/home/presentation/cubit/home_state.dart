import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/home/data/models/banners_model.dart';
import 'package:opensooq/future/user_local_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int index,
    @Default(null) UserLocalModel? userLocalModel,
    @Default(null) AdvertisementModel? advertisementOffer,
    @Default(null) BannersModel? bannersModel,
  }) = _HomeState;
}
