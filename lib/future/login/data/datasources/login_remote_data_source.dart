import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/login_api.dart';
import 'package:opensooq/future/login/data/models/change_password_model.dart';
import 'package:opensooq/future/login/data/models/forget_password_model.dart';
import 'package:opensooq/future/login/data/models/login_model.dart';
import 'package:opensooq/future/login/domain/repositories/login_params.dart';
import 'package:opensooq/future/login/domain/usecase/change_password.dart';
import 'package:opensooq/future/login/domain/usecase/forget_password.dart';
import 'package:opensooq/future/login/domain/usecase/verfy_forget_otp.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

abstract class LoginRemoteDataSource {
  Future<UserCredential?> loginWithGoogle();
  Future<UserCredential?> loginWithApple();
  Future<ChangePasswordModel> changePasswordUser({required ChangePasswordUserParams params});
  Future<ForGetPasswordModel> forGetPasswordUser({required ForGetPasswordUserParams params});
  Future<ForGetPasswordModel> verifyForGetPasswordUser({required VerifyForGetPasswordUserParams params});
  Future<LoginModel> loginWithEmailOrPhone({required LoginParams params});
}

@LazySingleton(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final LoginApi loginApi;
  LoginRemoteDataSourceImpl(this.loginApi);
  @override
  Future<UserCredential?> loginWithGoogle() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<UserCredential?> loginWithApple() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    return await FirebaseAuth.instance.signInWithCredential(
      OAuthCredential(
        providerId: 'apple.com',
        signInMethod: 'oauth',
        accessToken: credential.authorizationCode,
        idToken: credential.identityToken,
      ),
    );
  }

  @override
  Future<LoginModel> loginWithEmailOrPhone({required LoginParams params}) async => loginApi.loginUser(body: params.toJson());

  @override
  Future<ForGetPasswordModel> forGetPasswordUser({required ForGetPasswordUserParams params}) async => loginApi.forGetPassword(
        body: params.toJson(),
      );

  @override
  Future<ForGetPasswordModel> verifyForGetPasswordUser({required VerifyForGetPasswordUserParams params}) => loginApi.forGetPassword(
        body: params.toJson(),
      );

  @override
  Future<ChangePasswordModel> changePasswordUser({required ChangePasswordUserParams params}) => loginApi.changePasswordUser(
        body: params.toJson(),
      );
}
