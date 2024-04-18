import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_us_state.freezed.dart';

enum AboutUsStatus { initial, loading, loaded, error }

@freezed
class AboutUsState with _$AboutUsState {
  const factory AboutUsState({
    @Default(AboutUsStatus.initial) AboutUsStatus aboutUsStatus,
  }) = _AboutUsState;
}
