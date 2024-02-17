import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:opensooq/core/error/failures.dart';
import 'package:opensooq/future/setting1/data/models/edit_user_model.dart';
import 'package:opensooq/future/setting1/data/repositories/setting_repository.dart';
import 'package:opensooq/di.dart' as di;
part 'edit_user_state.dart';

class EditUserCubit extends Cubit<EditUserState> {
  EditUserCubit() : super(EditUserInitial());

}
