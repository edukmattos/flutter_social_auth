import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_social_auth/app/modules/shared/auth/repositories/interfaces/auth_repository_interface.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  UserCredential user;

  @action
  setUser(UserCredential value) => user = value;

  _AuthControllerBase() {
    _authRepository.authRepoUser().then(setUser);
  }

  @action
  Future authCtrlGoogleSignIn() async {
    user = await _authRepository.authRepoGoogleSignIn();
  }

  @action
  Future authCtrlLogout() async {
    user = await _authRepository.authRepoGoogleSignIn();
  }
}
