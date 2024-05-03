import 'package:equatable/equatable.dart';

class LoginParams extends Equatable {
  final String email;
  final String password;
  final String token;
  final String device;
  final String deviceId;

  const LoginParams({required this.email, required this.password, required this.token, required this.device, required this.deviceId});

  @override
  List<Object?> get props => [email, password, token, device, deviceId];

  //to json
  Map<String, dynamic> toJson() {
    return {
      'email_or_phone': email,
      'password': password,
      'token': token,
      'device': device,
      'device_id': deviceId,
    };
  }
}
