import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';
import 'package:opensooq/future/setting/presentation/cubit/about_us_cubit/about_us_state.dart';
import 'package:opensooq/di.dart' as di;

class AboutUsCubit extends Cubit<AboutUsState> {
  AboutUsCubit() : super(const AboutUsState());
  final SettingRepository settingRepository = di.sl();

  static AboutUsCubit get(context) => BlocProvider.of(context);

  Future<void> getAboutUs() async {
    emit(state.copyWith(aboutUsStatus: AboutUsStatus.loading));

    final result = await settingRepository.getAboutUs();
    result.fold((error) {
      emit(state.copyWith(aboutUsStatus: AboutUsStatus.error));
    }, (aboutUs) {
      emit(state.copyWith(
          aboutUsStatus: AboutUsStatus.loaded, aboutUs: aboutUs));
    });
  }
}
