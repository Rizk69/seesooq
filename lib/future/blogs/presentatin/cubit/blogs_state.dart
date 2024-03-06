

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';
part 'blogs_state.freezed.dart';
enum BlogsStatus { initial, loading, loaded, error }

@freezed
class BlogsState with _$BlogsState {
  const factory BlogsState({
    @Default([]) List<CategoryDataModel> category,

  }) = _BlogsState;
}
