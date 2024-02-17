part of 'edit_user_cubit.dart';

@immutable
abstract class EditUserState {}

class EditUserInitial extends EditUserState {}

class EditUserLoading extends EditUserState {}

class EditUserSuccess extends EditUserState {
  final EditUserModel editUserModel;

  EditUserSuccess(this.editUserModel);
}

class EditUserError extends EditUserState {
  final Failures failures;

  EditUserError(this.failures);
}
