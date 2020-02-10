import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:kelal_authentication/auth_state.dart';

class LoginPage extends StatelessWidget {
  final StreamController<AuthenticationState> _streamController;

  LoginPage(this._streamController);

  login() async {
    _streamController.add(AuthenticationState.authenticate());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Login"),
          onPressed: login,
        ),
      ),
    );
  }
}
