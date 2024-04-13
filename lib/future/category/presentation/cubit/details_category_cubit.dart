import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/category/data/repositories/category_repository.dart';
import 'package:opensooq/future/category/domain/filter_usecase.dart';
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
  int filterPage = 1;
  bool hasFilterMoreItems = true;

  Future<void> sendFilter() async {
    emit(state.copyWith(viewData: ViewData.filters));
    FilterParams filterParams = FilterParams(
      subCategoryId: state.detailsCategory.first.id.toString(),
      filter: state.idsFilterSelected,
      fromPrice: state.rangeValues.start.toString(),
      toPrice: state.rangeValues.end.toString(),
      page: filterPage,
    );
    emit(state.copyWith(filterStatus: FilterStatus.loading));

    // emit(const ViewState.loading());
    await categoryRepository
        .sendFilter(
          params: filterParams,
        )
        .then((value) => value.fold((l) {
              if (kDebugMode) {
                print(l);
              }
              emit(state.copyWith(detailsCategoryStatus: DetailsCategoryStatus.error));
            }, (r) {
              emit(state.copyWith(filterAdvertisementModel: r, filterStatus: FilterStatus.loaded));
              if ((r.meta?.total ?? 0) < AppConstants.itemsPerPage) {
                hasFilterMoreItems = false;
              }
            }));
  }

  Future<void> getAdvertisementCategory({required String subCategory}) async {
    emit(state.copyWith(advertisemenStatus: AdvertisemenStatus.loading, viewData: ViewData.normal));
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
                  if (hasMoreItems && state.viewData == ViewData.normal) {
                    paginationAdvertisement(subCategory: subCategory);
                  } else if (hasFilterMoreItems && state.viewData == ViewData.filters) {
                    paginationFilterAdvertisement(subCategory: subCategory);
                  }
                }
              });
            }));
  }

  Future<void> getAttributesByFilter({required String subCategory}) async {
    emit(state.copyWith(filterStatus: FilterStatus.loading));
    final result = await categoryRepository.getAttributesByFilter(subCategoryId: subCategory);
    result.fold((l) {
      emit(state.copyWith(filterStatus: FilterStatus.error));
    }, (r) {
      emit(state.copyWith(filterData: r, filterStatus: FilterStatus.loaded));
    });
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

  Future<void> paginationFilterAdvertisement({required String subCategory}) async {
    int lastPage = state.filterAdvertisementModel?.meta?.lastPage?.toInt() ?? 0;
    int currentPage = state.filterAdvertisementModel?.meta?.currentPage?.toInt() ?? 0;
    if (currentPage <= lastPage) {
      currentPage++;
      await categoryRepository
          .sendFilter(
            params: FilterParams(
              subCategoryId: subCategory,
              filter: state.idsFilterSelected,
              fromPrice: state.rangeValues.start.toString(),
              toPrice: state.rangeValues.end.toString(),
              page: currentPage,
            ),
          )
          .then((value) => value.fold((l) {
                if (kDebugMode) {
                  print(l);
                }
              }, (r) {
                emit(state.copyWith(
                  filterAdvertisementModel: AdvertisementModel(
                    data: [...state.filterAdvertisementModel?.data ?? [], ...r.data ?? []],
                    meta: r.meta,
                  ),
                ));
              }));
    }
  }

  void selectedMultiIdsForOneQuestion(String questionId, String answerId) {
    Map<String, List<String>> idsFilterSelected = Map.from(state.idsFilterSelected); // Make a mutable copy
    if (idsFilterSelected.containsKey(questionId)) {
      if (idsFilterSelected[questionId]!.contains(answerId)) {
        idsFilterSelected[questionId]!.remove(answerId);
      } else {
        idsFilterSelected[questionId]!.add(answerId);
      }
    } else {
      idsFilterSelected[questionId] = [answerId];
    }
    print(idsFilterSelected);

    emit(state.copyWith(idsFilterSelected: idsFilterSelected, changeRebuild: !state.changeRebuild));
  }

  void updateRangeValues(RangeValues values) {
    emit(state.copyWith(rangeValues: values, changeRebuild: !state.changeRebuild));
  }

  // Debounce duration

  resetPagination() {
    page = 1;
    hasMoreItems = true;
    scrollController = ScrollController();
  }

  resetFilter() {
    emit(state.copyWith(idsFilterSelected: {}, changeRebuild: !state.changeRebuild));
  }
}
