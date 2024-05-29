import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:opensooq/core/utils/loadin_app.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/myads/bloc/myads_state.dart';
import 'package:opensooq/future/myads/data/repositories/my_ads_repository.dart';

import '../../category/data/models/advertisment_model.dart';

part 'myads_event.dart';

class MyadsBloc extends Bloc<MyadsEvent, MyAdsState> {
  MyadsBloc() : super(const MyAdsState.initState()) {
    on<MyadsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetMyadsEvent>((event, emit) async {
      await _getMyads(emit);
    });

    on<EditMyadsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<DeleteMyadsEvent>((event, emit) async {
      await _deleteMyads(event.id, emit, event.index);
    });
  }

  final MyAdsRepository myAdsRepository = di.sl<MyAdsRepository>();

  Future<void> _getMyads(Emitter<MyAdsState> emit) async {
    final response = await myAdsRepository.getMyAds();
    response.fold(
      (l) {
        print('Error: ${l.message}');
        emit(
          MyAdsState.error(
            message: l.message.toString(),
          ),
        );
      },
      (r) {
        print('dsadsadsadasd: ${r.advertisementModel?.data?.length}');
        emit(
          MyAdsState.loaded(advertisementModel: r),
        );
      },
    );
  }

  Future<void> _deleteMyads(String id, Emitter<MyAdsState> emit, int index) async {
    if (state is! MyAdsStateLoaded) {
      emit(const MyAdsState.error(message: 'Invalid state'));
      return;
    }

    emit(const MyAdsState.loading());
    final response = await myAdsRepository.deleteMyAds(id: int.parse(id));
    response.fold(
      (l) {
        showError(l.message.toString());
        emit(MyAdsState.error(message: l.message.toString()));
      },
      (r) {
        List<Data> updatedList = List<Data>.from((state as MyAdsStateLoaded).advertisementModel.advertisementModel!.data!)..removeAt(index);

        AdvertisementModel newAdvertisementModel = AdvertisementModel(data: updatedList);

        MyAdsModel updatedModel = (state as MyAdsStateLoaded).advertisementModel.copyWith(advertisementModel: newAdvertisementModel);

        emit(MyAdsState.loaded(advertisementModel: updatedModel));
      },
    );
    dismissLoading();
  }
}
