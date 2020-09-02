import 'package:flutter_social_auth/app/modules/shared/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  AuthController auth = Modular.get();

  @observable
  bool loading = false;

  @action
  Future loginCtrlGoogleSignIn() async {
    try {
      loading = true;
      auth.authCtrlGoogleSignIn();
    } catch (e) {
      loading = false;
    }
  }

  @action
  Future<dynamic> loginCtrlLogout() async {
    try {
      return Future.wait([
        auth.authCtrlLogout(),
      ]);
    } catch (e) {
      print('Error signin out: $e');
      // return e;
      throw '$e';
    }
  }
}
