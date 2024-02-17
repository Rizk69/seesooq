import 'package:freezed_annotation/freezed_annotation.dart';

part 'attributes_form.freezed.dart';
part 'attributes_form.g.dart';

@freezed
class AttributesForm with _$AttributesForm {
  const factory AttributesForm({
    @Default('') String title,
    @Default('') String description,
    @Default([]) List<String> albums,
    @Default('') String price,
    @Default(false) bool isOffer,
    @Default('') String offerPrice,
    @Default('') String offerStartTime,
    @Default('') String offerStartDate,
    @Default('') String offerEndTime,
    @Default('') String offerEndDate,
    @Default('') String governorateId,
    @Default('') String cityId,
    @Default('') String phone,
    @Default('') String contactMethods,
    @Default({}) Map<int, dynamic> attributes,
    @Default('') String paymentMethods,
    @Default('') String video,
  }) = _AttributesForm;

  // init form

  factory AttributesForm.fromJson(Map<String, dynamic> json) => _$AttributesFormFromJson(json);
}
