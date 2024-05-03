import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';
import 'package:opensooq/future/setting/presentation/cubit/reaseon_deletions_cubit/reason_deletions_state.dart';

class ReasonDeletionsCubit extends Cubit<ReasonDeletionsState> with ChangeNotifier {
  ReasonDeletionsCubit() : super(const ReasonDeletionsState());
  static ReasonDeletionsCubit get(context) => BlocProvider.of(context);

  final SettingRepository settingRepository = di.sl();
  void selectReason(int reason) {
    emit(state.copyWith(selectedReason: reason));
  }

  Future<void> getReasonsForDeletion() async {
    emit(state.copyWith(reasonDeletionsStatus: ReasonDeletionsStatus.loading));
    final result = await settingRepository.getReasonsForDeletion();
    result.fold((error) {
      emit(state.copyWith(reasonDeletionsStatus: ReasonDeletionsStatus.error));
    }, (reasonDeletionsModel) {
      if (reasonDeletionsModel.data?.data?.isEmpty ?? true) {
        emit(state.copyWith(reasonDeletionsStatus: ReasonDeletionsStatus.error));
      } else {
        emit(state.copyWith(reasonDeletionsStatus: ReasonDeletionsStatus.loaded, reasonDeletionsModel: reasonDeletionsModel));
      }
    });
  }

  Future<void> deleteAccount() async {
    emit(state.copyWith(deleteAccountStatus: DeleteAccountStatus.loading));
    final result = await settingRepository.deleteAccount(
      reason: state.selectedReason.toString(),
    );
    result.fold((error) {
      emit(state.copyWith(deleteAccountStatus: DeleteAccountStatus.error));
    }, (reasonDeletionsModel) {
      emit(state.copyWith(deleteAccountStatus: DeleteAccountStatus.success));
    });
    notifyListeners();
  }
}
