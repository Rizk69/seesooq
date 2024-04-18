import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/setting1/data/models/privacy_policy_model.dart';
import 'package:opensooq/future/setting1/data/models/reasons_for_deletion_model.dart';
import 'package:opensooq/future/setting1/data/models/terms_of_use_model.dart';
import 'package:opensooq/future/setting1/data/repositories/setting_repository.dart';

part 'policy_state.dart';

class PolicyCubit extends Cubit<PolicyState> {
  PolicyCubit() : super(PolicyInitial());
  final SettingRepository settingRepository = di.sl();
  static PolicyCubit get(context) => BlocProvider.of(context);

  Future<void> _getPrivacyPolicy() async {
    emit(PrivacyPolicyLoading());
    final result = await settingRepository.privacyPolicy();
    result.fold((error) {
      print('error ${error.message}');
      emit(PrivacyPolicyError(error));
    }, (privacyPolicy) => emit(PrivacyPolicySuccess(privacyPolicy)));
  }

  Future<void> _getTermsOfUse() async {
    emit(TermsOfUseLoading());
    final result = await settingRepository.termsOfUse();
    result.fold((error) {
      print('error ${error.message}');
      emit(TermsOfUseError(error));
    }, (privacyPolicy) => emit(TermsOfUseSuccess(privacyPolicy)));
  }

  Future<void> _getReasonsForDeletion() async {
    emit(ReasonsForDeletionLoading());
    final result = await settingRepository.reasonsForDeletion();
    result.fold((error) {
      print('error ${error.message}');
      emit(ReasonsForDeletionError(error));
    }, (privacyPolicy) => emit(ReasonsForDeletionSuccess(privacyPolicy)));
  }
}
