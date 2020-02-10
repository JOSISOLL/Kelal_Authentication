import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:kelal_authentication/auth_state.dart';

class HomePage extends StatelessWidget {
  final StreamController<AuthenticationState> _streamController;

  HomePage(this._streamController);

  logout() async {
    _streamController.add(AuthenticationState.signedOut());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Logout"),
          onPressed: logout,
        ),
      ),
    );
  }
}
