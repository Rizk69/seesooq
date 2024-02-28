import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/home/data/repositories/home_user_repo.dart';
import 'package:opensooq/future/home/presentation/cubit/show_advertisment_state.dart';

class ShowAdvertismentCubit extends Cubit<ShowAdvertismentState> {
  ShowAdvertismentCubit() : super(const ShowAdvertismentState());
  HomeUserRepo homeUserRepo = di.sl<HomeUserRepo>();

  static ShowAdvertismentCubit get(context) => BlocProvider.of(context);

  Future<void> getAdvertisment(String id) async {
    emit(state.copyWith(storyStatus: ShowAdvertismentStatus.loading));
    final result = await homeUserRepo.showAdvertisement(id: int.parse(id));
    result.fold(
      (l) => emit(state.copyWith(storyStatus: ShowAdvertismentStatus.error)),
      (r) => emit(state.copyWith(storyStatus: ShowAdvertismentStatus.loaded, advertisementModel: r)),
    );
  }
}
