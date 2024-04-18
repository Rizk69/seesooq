import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';
import 'package:opensooq/future/setting/presentation/cubit/privacy_policy_cubit/privacy_policy_state.dart';

class PrivacyPolicyCubit extends Cubit<PrivacyPolicyState> {
  PrivacyPolicyCubit() : super(const PrivacyPolicyState());
  final SettingRepository settingRepository = di.sl();
  static PrivacyPolicyCubit get(context) => BlocProvider.of(context);

  Future<void> _getPrivacyPolicy() async {
    final result = await settingRepository.getPrivacyPolicy();
    result.fold((error) {
      print('error ${error.message}');
    }, (privacyPolicy) {});
  }
}
