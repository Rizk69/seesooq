import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/utils/app_constants.dart';

abstract class  CachedDataModel {
  @JsonKey(ignore: true)
  DateTime cacheTime = DateTime.now();
  @JsonKey(ignore: true)
  bool get isExpired =>
      DateTime.now().difference(cacheTime) > AppConstants.cacheTime;
  CachedDataModel();
}
