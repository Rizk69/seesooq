import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/category/presentation/cubit/category_state.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart';

import '../../../../core/utils/app_constants.dart';

@Injectable()
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required this.categoryRepo}) : super(const CategoryState()) {
    initialize();
  }

  final CategoryRepo categoryRepo;

  static CategoryCubit get(context) => BlocProvider.of(context);
  CategoryState _categoryState = const CategoryState();

  int page = 1;
  bool hasMoreItems = true;

  onSuccess() {
    if (!isClosed) emit((_categoryState));
  }

  Future<void> initialize() async {
    page = 1;
    hasMoreItems = true;
    emit(state.copyWith(categoryStatus: CategoryStatus.loading));
    // emit(const ViewState.loading());
    await categoryRepo.getCategory().then((value) => value.fold((l) {
          emit(state.copyWith(categoryStatus: CategoryStatus.error));
        }, (r) {
          emit(state.copyWith(category: r, categoryStatus: CategoryStatus.loaded));
          if (r.length < AppConstants.itemsPerPage) {
            hasMoreItems = false;
          }
        }));
  }

  loadMore() async {
    if (hasMoreItems && !_categoryState.loadingMore) {
      page++;
      _categoryState = _categoryState.copyWith(loadingMore: true);
      onSuccess();
      List<CategoryDataModel> newList = await categoryRepo.getCategory().then((value) => value.fold((l) => <CategoryDataModel>[], (r) => r));
      if (newList.isEmpty || newList.length < AppConstants.itemsPerPage) {
        hasMoreItems = false;
      }
      if (_categoryState.loadingMore) {
        var previousList = List<CategoryDataModel>.from(_categoryState.category);
        _categoryState = _categoryState.copyWith(category: [...previousList, ...newList]);
        _categoryState = _categoryState.copyWith(loadingMore: false);
        onSuccess();
      }
    }
  }

  Future<void> uploadPhoto() async {
    // await PickFilesService.getImageFromPhone(onPicked: (p0) {
    //   if (p0.isNotEmpty) {
    //     emit(state.copyWith(images: p0));
    //   }
    // });
  }

  void removePhoto({required int index}) async {
    List<XFile?> list = List.from(state.images);
    list.removeAt(index);
    emit(state.copyWith(images: list));
  }
}
