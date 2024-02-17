import 'package:equatable/equatable.dart';

class SignUpParams extends Equatable {
  final String email;
  final String password;
  final String confirmPassword;
  final String phone;
  final String fullName;

  const SignUpParams({
    required this.email,
    required this.password,
    required this.phone,
    required this.fullName,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [email, password, phone, fullName, confirmPassword];

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'password_confirmation': password,
      'phone': phone,
      'name': fullName,
    };
  }
}
