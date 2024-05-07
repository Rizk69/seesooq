import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/signup_api.dart';
import 'package:opensooq/core/utils/cache_helper.dart';
import 'package:opensooq/future/login/data/models/login_model.dart';
import 'package:opensooq/future/signup/data/models/sign_up_model.dart';
import 'package:opensooq/future/signup/data/repositories/params/signup_params.dart';
import 'package:opensooq/future/user_local_model.dart';

abstract class SignUpRemoteDataSource {
  Future<SignUpModel> signUpWithEmailAndPhone({required SignUpParams params});
  Future<LoginModel> verifyOtp({required String phoneNumber, required String otp});
  Future<void> cacheUserModel({required UserLocalModel userLocalModel});

  Future<void> signUpFromSocial({
    required String socialId,
    required String email,
    required String name,
  });
  Future<LoginModel> loginInFromSocial({
    required String socialId,
    required String token,
    required String device,
    required String deviceId,
  });
}

@LazySingleton(as: SignUpRemoteDataSource)
class SignUpRemoteDataSourceImpl implements SignUpRemoteDataSource {
  final CacheHelper _cacheHelper;
  final SignupApi _api;

  SignUpRemoteDataSourceImpl(this._cacheHelper, this._api);

  @override
  Future<SignUpModel> signUpWithEmailAndPhone({required SignUpParams params}) async {
    // return _api.signUpWithEmailAndPhone(body: params.toJson());
    return _api.signUpUser(body: params.toJson());
  }

  @override
  Future<LoginModel> verifyOtp({required String phoneNumber, required String otp}) {
    return _api.verifyOtp(body: {
      'phone': phoneNumber,
      'otp': otp,
    });
  }

  @override
  Future<void> cacheUserModel({required UserLocalModel userLocalModel}) {
    return _cacheHelper.hivePutData<UserLocalModel>(userLocalModel, 'user');
  }

  @override
  Future<LoginModel> loginInFromSocial({
    required String socialId,
    required String token,
    required String device,
    required String deviceId,
  }) {
    return _api.loginWithSocial(body: {
      'email_or_social_id': socialId,
      'token': token,
      'device': device,
      'device_id': deviceId,
    });
  }

  @override
  Future<void> signUpFromSocial({
    required String socialId,
    required String email,
    required String name,
  }) {
    return _api.registerWithSocial(body: {
      'social_id': socialId,
      'email': email,
      'name': name,
    });
  }
}
