import 'package:equatable/equatable.dart';

abstract class UseCasesSharedPref<Type, Params> {
  dynamic call(Params params);
}

class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
