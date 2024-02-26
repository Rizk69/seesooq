import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attributes_form.freezed.dart';

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
    @Default([]) List<File> images,
    @Default(null) File? video,
    @Default('') String paymentMethods,
  }) = _AttributesForm;

  // init form
}
