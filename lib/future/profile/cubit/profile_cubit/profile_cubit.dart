import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/profile/cubit/profile_cubit/profile_state.dart';
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(  ProfileState());
  final SettingRepository settingRepository = di.sl();

  static ProfileCubit get(context) => BlocProvider.of(context);

  Future<void> getStatistic() async {
    emit(state.copyWith(profileStatus: ProfileStatus.loading));

    final result = await settingRepository.getStatistic();
    result.fold((error) {
      emit(state.copyWith(profileStatus: ProfileStatus.error));
    }, (statisticModel) {
      emit(state.copyWith(
          profileStatus: ProfileStatus.loaded, statisticModel: statisticModel));
    });
  }
}
