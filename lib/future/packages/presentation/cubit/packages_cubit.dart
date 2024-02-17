import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/usecasses/usecasess_shared.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/packages/domain/use_cases/get_package_usecase.dart';
import 'package:opensooq/future/packages/presentation/cubit/packages_state.dart';

class PackagesCubit extends Cubit<PackagesState> {
  final GetPackagesUseCase getPackageUseCase = di.sl();

  PackagesCubit() : super(const PackagesState());

  Future<void> getPackagesList() async {
    final result = await getPackageUseCase(NoParams());
    result.fold(
      (failure) => print('dsaklhdjksahdjkhsajkdhaskjhdjksahd'),
      (packages) => emit(state.copyWith(packagesModel: packages)),
    );
  }

  PageController controller = PageController(initialPage: 0);

  void changePage(int index) {
    controller.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  void changeSegmentButtonState(SegmentButtonState segmentButtonState) {
    emit(state.copyWith(segmentButtonState: segmentButtonState));
  }
}
