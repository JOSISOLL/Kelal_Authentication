import 'auth_state.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kelal_authentication/login.dart';
import 'package:kelal_authentication/home.dart';

class BuilderPage extends StatelessWidget {
  final StreamController<AuthenticationState> _streamController =
      new StreamController<AuthenticationState>();

  Widget buildUI(BuildContext context, AuthenticationState s) {
    if (s.authenticated) {
      return HomePage(_streamController);
    } else {
      return LoginPage(_streamController);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new StreamBuilder<AuthenticationState>(
      stream: _streamController.stream,
      initialData: new AuthenticationState.initial(),
      builder:
          (BuildContext context, AsyncSnapshot<AuthenticationState> snapshot) {
        final state = snapshot.data;
        return buildUI(context, state);
      },
    );
  }
}
