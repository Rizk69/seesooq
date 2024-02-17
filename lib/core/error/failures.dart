import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  final int? code;
  final String? message;
  const Failures({this.code, this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ServerFailure extends Failures {}

class CacheFailure extends Failures {
  const CacheFailure({String? errorMessage}) : super(message: errorMessage);
}

class DefaultFailure extends Failures {
  const DefaultFailure({int? code, String? message}) : super(code: code, message: message);
}

class LocationFailure extends Failures {
  const LocationFailure() : super(message: 'enableLocation');
}

class AuthFailure extends Failures {
  final String message;
  const AuthFailure(this.message) : super(message: message);
}
