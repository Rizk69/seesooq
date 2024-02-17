import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/future/setting1/data/repositories/setting_repository.dart';
import 'edit_profile_state.dart';
import 'package:opensooq/di.dart' as di;

enum Gender { male, female }

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(EditProfileState());
  static EditProfileCubit get(context) => BlocProvider.of(context);
  final SettingRepository settingRepository = di.sl<SettingRepository>();

  void selectGender(Gender gender) {
    emit(state.copyWith(gender: gender));
  }

  void updateCountry(
      {required String countryCode, required String countryFlag}) {
    emit(state.copyWith(
      countryCode: countryCode,
      countryFlag: countryFlag,
    ));
  }

  Future<void> editUser() async {
    emit(
      state.copyWith(
        statusEditUser: StatusEditUser.loading,
      ),
    );
    final response = await settingRepository.editUser(name: '', email: 'email');
    response.fold(
      (left) => emit(
        state.copyWith(
          statusEditUser: StatusEditUser.error,
        ),
      ),
      (right) => emit(
        state.copyWith(
          editUserModel:right ,
          statusEditUser: StatusEditUser.success,
        ),
      ),
    );
  }
}
