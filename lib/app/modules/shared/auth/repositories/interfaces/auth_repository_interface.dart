import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<UserCredential> authRepoUser();
  Future<UserCredential> authRepoGoogleSignIn();
  Future<UserCredential> authRepoEmailPasswordSingIn(
      String email, String password);
  Future<UserCredential> authRepoEmailPasswordSignUp(
      {String email, String password});
  Future<String> authRepoToken();
  Future authRepoSignOut();
}
