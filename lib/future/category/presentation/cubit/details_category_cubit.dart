import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category/data/repositories/category_repository.dart';
import 'package:opensooq/future/category/presentation/cubit/details_category_state.dart';

import '../../../../core/utils/app_constants.dart';

@lazySingleton
class DetailsCategoryCubit extends Cubit<DetailsCategoryState> {
  DetailsCategoryCubit({required this.categoryRepository}) : super(const DetailsCategoryState());

  final CategoryRepository categoryRepository;

  static DetailsCategoryCubit get(context) => BlocProvider.of(context);
  final DetailsCategoryState _detailsCategoryState = const DetailsCategoryState();

  int page = 1;
  bool hasMoreItems = true;

  onSuccess() {
    if (!isClosed) emit((_detailsCategoryState));
  }

  Future<void> getSubCategory({required String categoryId}) async {
    emit(state.copyWith(detailsCategoryStatus: DetailsCategoryStatus.loading));

    // emit(const ViewState.loading());
    await categoryRepository
        .getDetailsCategories(
          categoryId: categoryId,
        )
        .then((value) => value.fold((l) {
              if (kDebugMode) {
                emit(state.copyWith(detailsCategoryStatus: DetailsCategoryStatus.error));
                print(l);
              }
            }, (r) {
              emit(state.copyWith(detailsCategory: r, detailsCategoryStatus: DetailsCategoryStatus.success));
              if (r.length < AppConstants.itemsPerPage) {
                hasMoreItems = false;
              }
            }));
  }

  Future<void> getDetailsCategory({required String categoryId}) async {
    emit(state.copyWith(detailsCategoryStatus: DetailsCategoryStatus.loading));

    // emit(const ViewState.loading());
    await categoryRepository
        .getDetailsCategories(
          categoryId: categoryId,
        )
        .then((value) => value.fold((l) {
              if (kDebugMode) {
                print(l);
              }
              emit(state.copyWith(detailsCategoryStatus: DetailsCategoryStatus.error));
            }, (r) {
              emit(state.copyWith(detailsCategory: r, detailsCategoryStatus: DetailsCategoryStatus.success));
              if (r.length < AppConstants.itemsPerPage) {
                hasMoreItems = false;
              }
            }));
  }

  ScrollController scrollController = ScrollController();

  Future<void> getAdvertisementCategory({required String subCategory}) async {
    await categoryRepository
        .getAdvertisementCategory(
          subCategoryId: subCategory,
          page: page,
        )
        .then((value) => value.fold((l) {
              if (kDebugMode) {
                print(l);
              }
            }, (r) {
              emit(state.copyWith(advertisementModel: r));
              scrollController = ScrollController();
              scrollController.addListener(() {
                if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
                  if (hasMoreItems) {
                    paginationAdvertisement(subCategory: subCategory);
                  }
                }
              });
            }));
  }

  Future<void> paginationAdvertisement({required String subCategory}) async {
    int lastPage = state.advertisementModel?.meta?.lastPage?.toInt() ?? 0;
    int currentPage = state.advertisementModel?.meta?.currentPage?.toInt() ?? 0;
    if (currentPage <= lastPage) {
      currentPage++;
      await categoryRepository
          .getAdvertisementCategory(
            subCategoryId: subCategory,
            page: currentPage,
          )
          .then((value) => value.fold((l) {
                if (kDebugMode) {
                  print(l);
                }
              }, (r) {
                emit(state.copyWith(
                  advertisementModel: AdvertisementModel(
                    data: [...state.advertisementModel?.data ?? [], ...r.data ?? []],
                    meta: r.meta,
                  ),
                ));
              }));
    }
  }

  resetPagination() {
    page = 1;
    hasMoreItems = true;
    scrollController = ScrollController();
  }
}
