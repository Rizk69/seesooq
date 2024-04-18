import 'package:opensooq/future/setting/data/models/edit_user_model.dart';

import 'edit_profile_cubit.dart';

enum StatusEditUser { init, loading, success, error }

class EditProfileState {
  final Gender gender;
  String countryCode;
  String countryFlag;
  StatusEditUser statusEditUser;
  EditUserModel? editUserModel;
  EditProfileState({
    this.gender = Gender.male,
    this.countryCode = '+962',
    this.countryFlag = 'JO',
    this.statusEditUser = StatusEditUser.init,
    this.editUserModel,
  });

  EditProfileState copyWith({Gender? gender, countryCode, countryFlag, StatusEditUser? statusEditUser, EditUserModel? editUserModel}) {
    return EditProfileState(
      gender: gender ?? this.gender,
      countryCode: countryCode ?? this.countryCode,
      countryFlag: countryFlag ?? this.countryFlag,
      statusEditUser: statusEditUser ?? this.statusEditUser,
      editUserModel: editUserModel ?? this.editUserModel,
    );
  }
}
