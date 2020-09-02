// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $LoginController = BindInject(
  (i) => LoginController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$loadingAtom = Atom(name: '_LoginControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$loginCtrlGoogleSignInAsyncAction =
      AsyncAction('_LoginControllerBase.loginCtrlGoogleSignIn');

  @override
  Future<dynamic> loginCtrlGoogleSignIn() {
    return _$loginCtrlGoogleSignInAsyncAction
        .run(() => super.loginCtrlGoogleSignIn());
  }

  final _$loginCtrlLogoutAsyncAction =
      AsyncAction('_LoginControllerBase.loginCtrlLogout');

  @override
  Future<dynamic> loginCtrlLogout() {
    return _$loginCtrlLogoutAsyncAction.run(() => super.loginCtrlLogout());
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}