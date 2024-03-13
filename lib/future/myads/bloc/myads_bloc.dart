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
}
// https://fcm.googleapis.com/fcm/send
//{
//   "to":"c86M0G3m3EDFhh9_bFD9Zh:APA91bEBLI4cDRsoBkhKu-f58Hm0Covp4ZsNOriM7HO-J8OyM1eKtg0TEdnL7ffoMNEnCctTNoHsx5_FzbRr6G6bQ_wsnck2PZbC5-h3BNcwMB2PFkdxoBymTIu6Xv-OFB-hTw31SoKD",
//   "notification": {
//     "title": "New Job Assign",
//     "body":"AHmad"
//   },
//
//
//
//    "aps" : {
//       "alert": {
//           "uuid": "982cf533-7b1b-4cf6-a6e0-004aab68c503",
//           "incoming_caller_id": "1",
//           "incoming_caller_name": "yaseen"
//         }
//
//    }
//
// }
