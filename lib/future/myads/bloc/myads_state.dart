import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';

part 'myads_state.freezed.dart';

@freezed
class MyAdsState with _$MyAdsState {
  const factory MyAdsState.initState() = MyAdsStateInitState;
  const factory MyAdsState.loading() = MyAdsStateLoading;
  const factory MyAdsState.loaded({required MyAdsModel advertisementModel}) = MyAdsStateLoaded;
  const factory MyAdsState.error({required String message}) = MyAdsStateError;
}