import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';

part 'category_state.freezed.dart';

enum CategoryStatus { initial, loading, loaded, error }

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default([]) List<CategoryDataModel> category,
    @Default(CategoryStatus.initial) CategoryStatus categoryStatus,
    @Default([]) List<XFile?> images,
    @Default(false) bool loadingMore,
  }) = _CategoryState;
}
