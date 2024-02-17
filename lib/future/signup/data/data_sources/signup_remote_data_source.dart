import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/core/network/api/signup_api.dart';
import 'package:opensooq/future/signup/data/models/sign_up_model.dart';
import 'package:opensooq/future/signup/data/repositories/params/signup_params.dart';

abstract class SignUpRemoteDataSource {
  Future<User?> signUp();
  Future<SignUpModel> signUpWithEmailAndPhone({required SignUpParams params});
}

@LazySingleton(as: SignUpRemoteDataSource)
class SignUpRemoteDataSourceImpl implements SignUpRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final SignupApi _api;

  SignUpRemoteDataSourceImpl(this._firebaseAuth, this._api);

  @override
  Future<User?> signUp() async {
    try {
      final user = await _firebaseAuth.signInAnonymously();
      return user.user!;
    } on FirebaseAuthException catch (e) {
      return null;
    }
  }

  @override
  Future<SignUpModel> signUpWithEmailAndPhone({required SignUpParams params}) async {
    // return _api.signUpWithEmailAndPhone(body: params.toJson());
    return _api.signUpUser(body: params.toJson());
  }
}
