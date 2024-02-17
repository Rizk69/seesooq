import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/category_product/data/models/category_model.dart';
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart';
import 'package:opensooq/future/category_product/presentation/cubit/category_product_state.dart';

import '../../../../core/utils/app_constants.dart';

@Injectable()
class CategoryProductCubit extends Cubit<CategoryProductState> {
  CategoryProductCubit({required this.categoryRepo}) : super(const CategoryProductState()) {
    initialize();
  }

  final CategoryRepo categoryRepo;

  static CategoryProductCubit get(context) => BlocProvider.of(context);
  CategoryProductState _categoryState = const CategoryProductState();

  int page = 1;
  bool hasMoreItems = true;

  onSuccess() {
    if (!isClosed) emit((_categoryState));
  }

  Future<void> initialize() async {
    emit(state.copyWith(categoryProductStatus: CategoryProductStatus.loading));
    page = 1;
    hasMoreItems = true;
    // emit(const ViewState.loading());
    await categoryRepo.getCategory().then((value) => value.fold((l) {
          if (kDebugMode) {
            emit(state.copyWith(categoryProductStatus: CategoryProductStatus.error));
            print(l);
          }
        }, (r) {
          emit(state.copyWith(categoryProduct: r, categoryProductStatus: CategoryProductStatus.loaded));
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
        var previousList = List<CategoryDataModel>.from(_categoryState.categoryProduct);
        _categoryState = _categoryState.copyWith(categoryProduct: [...previousList, ...newList]);
        _categoryState = _categoryState.copyWith(loadingMore: false);
        onSuccess();
      }
    }
  }

// this section Add Ads

  void selectCategory({required String subCategory}) {
    emit(state.copyWith(selectedSubCategory: subCategory));
  }

// end section Add Ads
}
