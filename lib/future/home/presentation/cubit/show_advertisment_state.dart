import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/home/data/models/single_advertisment_model.dart';

part 'show_advertisment_state.freezed.dart';

enum ShowAdvertismentStatus { initial, loading, loaded, error }

@freezed
class ShowAdvertismentState with _$ShowAdvertismentState {
  const factory ShowAdvertismentState({
    @Default(ShowAdvertismentStatus.initial) ShowAdvertismentStatus storyStatus,
    @Default(null) SingleAdvertismentModel? advertisementModel,
  }) = _ShowAdvertismentState;
}
