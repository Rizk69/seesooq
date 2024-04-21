import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';
import 'package:opensooq/future/setting/presentation/cubit/frequently-asked-questions_cubit/frequently-asked-questions_state.dart';

class FrequentlyAskedCubit extends Cubit<FrequentlyAskedState> {
  FrequentlyAskedCubit() : super(const FrequentlyAskedState());
  final SettingRepository settingRepository = di.sl();

  static FrequentlyAskedCubit get(context) => BlocProvider.of(context);

  Future<void> getFrequentlyAsked() async {
    emit(state.copyWith(frequentlyAskedStatus: FrequentlyAskedStatus.loading));
    final result = await settingRepository.getFrequentlyAskQuestion();
    result.fold((error) {
      emit(state.copyWith(frequentlyAskedStatus: FrequentlyAskedStatus.error));
    }, (frequentlyAskedModel) {
      emit(state.copyWith(frequentlyAskedStatus: FrequentlyAskedStatus.loaded, frequentlyAskedModel: frequentlyAskedModel));
    });
  }
}
