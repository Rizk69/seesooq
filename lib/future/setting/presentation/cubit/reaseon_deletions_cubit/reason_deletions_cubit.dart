import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';
import 'package:opensooq/future/setting/presentation/cubit/reaseon_deletions_cubit/reason_deletions_state.dart';

class ReasonDeletionsCubit extends Cubit<ReasonDeletionsState> {
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
      print('Error loading reasons: ${error.message}');
      emit(state.copyWith(reasonDeletionsStatus: ReasonDeletionsStatus.error));
    }, (reasonDeletionsModel) {
      if (reasonDeletionsModel.data?.data?.isEmpty ?? true) {
        print('No reasons available');
        emit(state.copyWith(reasonDeletionsStatus: ReasonDeletionsStatus.error));
      } else {
        print('Loaded reasons: ${reasonDeletionsModel.data?.data?.length}');
        emit(state.copyWith(
            reasonDeletionsStatus: ReasonDeletionsStatus.loaded,
            reasonDeletionsModel: reasonDeletionsModel));
      }
    });
  }
}
