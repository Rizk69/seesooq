import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact_us_state.freezed.dart';

enum ContactUsStatus { initial, loading, loaded, error }

@freezed
class ContactUsState with _$ContactUsState {
  const factory ContactUsState({
    @Default(ContactUsStatus.initial) ContactUsStatus contactUsStatus,

  }) = _ContactUsState;
}
