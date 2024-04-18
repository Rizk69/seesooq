import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/setting/data/models/edit_user_model.dart';

part 'edit_user_state.dart';

class EditUserCubit extends Cubit<EditUserState> {
  EditUserCubit() : super(EditUserInitial());
}
