import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
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
    on<DeleteMyadsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final MyAdsRepository myAdsRepository = di.sl<MyAdsRepository>();

  Future<void> _getMyads(Emitter emit) async {
    final response = await myAdsRepository.getMyAds();
    response.fold(
      (l) => emit(
        MyAdsState.error(
          message: l.message.toString(),
        ),
      ),
      (r) => emit(
        MyAdsState.loaded(advertisementModel: r),
      ),
    );
  }
}
