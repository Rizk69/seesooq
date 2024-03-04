import 'package:opensooq/future/myads/data/repositories/my_ads_repository.dart';

import '../../category/data/models/advertisment_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:opensooq/di.dart' as di;
part 'myads_event.dart';
part 'myads_state.dart';

class MyadsBloc extends Bloc<MyadsEvent, MyadsState> {
  MyadsBloc() : super(MyadsInitial()) {

    on<MyadsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetMyadsEvent>((event, emit) async{
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
    response.fold((l) => emit(MyadsError(message: l.message.toString())),
        (r) => emit(MyadsLoaded(advertisementModel: r)));
  }
}
