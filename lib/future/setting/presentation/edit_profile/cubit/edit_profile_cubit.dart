import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/setting/data/data_sources/setting_local_data_source.dart';
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart';
import 'package:opensooq/future/user_local_model.dart';

import 'edit_profile_state.dart';

enum Gender { male, female }

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(EditProfileState());

  static EditProfileCubit get(context) => BlocProvider.of(context);
  final SettingRepository settingRepository = di.sl<SettingRepository>();
  final SettingLocalDataSource settingLocalDataSource = di.sl<SettingLocalDataSource>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  void selectGender(Gender gender) {
    emit(state.copyWith(gender: gender));
  }

  void updateCountry({required String countryCode, required String countryFlag}) {
    emit(state.copyWith(
      countryCode: countryCode,
      countryFlag: countryFlag,
    ));
  }

  Future<void> editUser(String name, String email, String phone) async {
    emit(
      state.copyWith(
        statusEditUser: StatusEditUser.loading,
      ),
    );
    final response = await settingRepository.editUser(
      name: nameController.text.isEmpty ? name : nameController.text,
      email: emailController.text.isEmpty ? email : emailController.text,
      phone: phoneController.text.isEmpty ? phone : phoneController.text,
    );
    response.fold(
      (left) => emit(
        state.copyWith(
          statusEditUser: StatusEditUser.error,
        ),
      ),
      (userModel) async {
        UserLocalModel? user = UserLocalModel(
            user: UserDataModel(name: userModel.user?.name, email: userModel.user?.email, id: userModel.user?.id, phone: userModel.user?.phone));
        await updateLocalUser(user);
        emit(
          state.copyWith(
            editUserModel: userModel,
            statusEditUser: StatusEditUser.success,
          ),
        );
      },
    );
  }

  Future<void> updateLocalUser(UserLocalModel userModel) async {
    final user = await settingLocalDataSource.getUserToLocal();
    UserLocalModel? userLocalModel = userModel..token = user?.token;
    await settingLocalDataSource.saveUserToLocal(userLocalModel: userLocalModel);
  }
}
