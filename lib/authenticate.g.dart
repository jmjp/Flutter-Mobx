// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Authenticate on _Authenticate, Store {
  final _$statusAtom = Atom(name: '_Authenticate.status');

  @override
  Status get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(Status value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$_AuthenticateActionController =
      ActionController(name: '_Authenticate');

  @override
  void login(String email, String password) {
    final _$actionInfo = _$_AuthenticateActionController.startAction();
    try {
      return super.login(email, password);
    } finally {
      _$_AuthenticateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logout() {
    final _$actionInfo = _$_AuthenticateActionController.startAction();
    try {
      return super.logout();
    } finally {
      _$_AuthenticateActionController.endAction(_$actionInfo);
    }
  }
}
