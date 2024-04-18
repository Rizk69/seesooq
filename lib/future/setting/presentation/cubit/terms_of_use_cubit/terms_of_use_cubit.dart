import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/setting/presentation/cubit/terms_of_use_cubit/terms_of_use_state.dart';

class TermsOfUseCubit extends Cubit<TermsOfUseState> {
  TermsOfUseCubit() : super(const TermsOfUseState());
  final SettingRepository settingRepository = di.sl();

  static TermsOfUseCubit get(context) => BlocProvider.of(context);

  Future<void> _getTermsOfUse() async {
    final result = await settingRepository.getTermsOfUse();
    result.fold((error) {
      print('error ${error.message}');
    }, (privacyPolicy) {});
  }
}
