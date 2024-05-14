import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/home/data/repositories/home_user_repo.dart';
import 'package:opensooq/future/user_local_model.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> with ChangeNotifier {
  HomeCubit() : super(const HomeState()) {
    getAdvertisementOffer();
    getBanners();
  }

  HomeUserRepo homeRepo = di.sl<HomeUserRepo>();

  static HomeCubit get(context) => BlocProvider.of(context);

  updateIndex(int index) {
    emit(state.copyWith(index: index));
  }

  void updateUserLocal(UserLocalModel? userLocalModel) {
    emit(state.copyWith(userLocalModel: userLocalModel));
  }

  void streamController(DirectionUser directionUser) {
    emit(state.copyWith(directionUser: directionUser));
  }

  ScrollController scrollController = ScrollController();
  int page = 1;
  bool hasMoreItems = true;
  Future<void> getAdvertisementOffer() async {
    await homeRepo
        .getOfferAds(
          categoryId: 1,
          page: page,
        )
        .then((value) => value.fold((l) {}, (r) {
              emit(state.copyWith(advertisementOffer: r));
              scrollController = ScrollController();
              scrollController.addListener(() {
                if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
                  if (hasMoreItems) {
                    paginationAdvertisement(subCategory: '1');
                  }
                }
              });
            }));
  }

  Future<void> getBanners() async {
    await homeRepo
        .getBanners(
          page: page,
        )
        .then((value) => value.fold((l) {}, (r) {
              emit(state.copyWith(bannersModel: r));
              scrollController = ScrollController();
              scrollController.addListener(() {
                if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
                  if (hasMoreItems) {}
                }
              });
            }));
  }

  Future<void> paginationAdvertisement({required String subCategory}) async {
    int lastPage = state.advertisementOffer?.meta?.lastPage?.toInt() ?? 0;
    int currentPage = state.advertisementOffer?.meta?.currentPage?.toInt() ?? 0;
    if (currentPage <= lastPage) {
      currentPage++;
      await homeRepo
          .getOfferAds(
            categoryId: 1,
            page: currentPage,
          )
          .then((value) => value.fold((l) {
                if (kDebugMode) {
                  print(l);
                }
              }, (r) {
                emit(state.copyWith(
                  advertisementOffer: AdvertisementModel(
                    data: [...state.advertisementOffer?.data ?? [], ...r.data ?? []],
                    meta: r.meta,
                  ),
                ));
              }));
    }
  }
  // Future<void> paginationBanners({required String subCategory}) async {
  //   int lastPage = state.bannersModel?.data?.lastPage?.toInt() ?? 0;
  //   int currentPage = state.advertisementOffer?.meta?.currentPage?.toInt() ?? 0;
  //   if (currentPage <= lastPage) {
  //     currentPage++;
  //     await homeRepo
  //         .getOfferAds(
  //           categoryId: 1,
  //           page: currentPage,
  //         )
  //         .then((value) => value.fold((l) {
  //               if (kDebugMode) {
  //                 print(l);
  //               }
  //             }, (r) {
  //               emit(state.copyWith(
  //                 advertisementOffer: AdvertisementModel(
  //                   data: [...state.advertisementOffer?.data ?? [], ...r.data ?? []],
  //                   meta: r.meta,
  //                 ),
  //               ));
  //             }));
  //   }
  // }

  void toggleLikeInOffer(int index) {
    List<Data> list = List.from(state.advertisementOffer?.data ?? []);
    // list[index].checkIfFavourite = !(list[index].checkIfFavourite ?? false);
    emit(state.copyWith(advertisementOffer: AdvertisementModel(data: list, meta: state.advertisementOffer?.meta)));
  }

  resetPagination() {
    page = 1;
    hasMoreItems = true;
    scrollController = ScrollController();
  }
}

const List<String> titles = [
  'ads_drawer',
  'reels_drawer',
  // 'booking_drawer',
  // 'auction_drawer',
  'wallet_drawer',
  'package_drawer',
  'favorite_drawer',
  'blogs_drawer',
  'account_drawer',
  'help_drawer',
  'setting_drawer',
  'logout',
];
