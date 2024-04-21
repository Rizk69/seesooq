import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';
import 'package:opensooq/future/setting/presentation/cubit/contact_us_cubit/contact_us_state.dart';

class AboutUsCubit extends Cubit<ContactUsState> {
  AboutUsCubit() : super(const ContactUsState()) {
    _getAboutUs();
  }
  final SettingRepository settingRepository = di.sl();

  static AboutUsCubit get(context) => BlocProvider.of(context);

  Future<void> _getAboutUs() async {
    final result = await settingRepository.getAboutUs();
    result.fold((error) {
      emit(state.copyWith(contactUsStatus: ContactUsStatus.error));
    }, (privacyPolicy) {
      emit(state.copyWith(contactUsStatus: ContactUsStatus.loaded));
    });
  }
}
