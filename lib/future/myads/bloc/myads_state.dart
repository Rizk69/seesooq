import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';

part 'myads_state.freezed.dart';

@freezed
class MyAdsState with _$MyAdsState {
  const factory MyAdsState.initState() = _InitState;
  const factory MyAdsState.loading() = _Loading;
  const factory MyAdsState.loaded({required AdvertisementModel advertisementModel}) = _Loaded;
  const factory MyAdsState.error({required String message}) = _Error;
}
