import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';
import 'package:opensooq/future/setting/presentation/cubit/reaseon_deletions_cubit/reason_deletions_state.dart';

class ReasonDeletionsCubit extends Cubit<ReasonDeletionsState> {
  ReasonDeletionsCubit() : super(const ReasonDeletionsState());
  static ReasonDeletionsCubit get(context) => BlocProvider.of(context);

  final SettingRepository settingRepository = di.sl();

  Future<void> _getReasonsForDeletion() async {
    // emit(ReasonsForDeletionLoading());
    final result = await settingRepository.getReasonsForDeletion();
    result.fold((error) {
      print('error ${error.message}');
      // emit(ReasonsForDeletionError(error));
    }, (privacyPolicy) {});
  }
}
