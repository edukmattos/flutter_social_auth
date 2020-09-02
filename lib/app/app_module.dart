import 'package:flutter_social_auth/app/modules/shared/auth/auth_controller.dart';
import 'package:flutter_social_auth/app/modules/shared/auth/repositories/auth_repositoy.dart';
import 'package:flutter_social_auth/app/modules/shared/auth/repositories/interfaces/auth_repository_interface.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_auth/app/app_widget.dart';
import 'package:flutter_social_auth/app/modules/home/home_module.dart';

import 'modules/auth/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
