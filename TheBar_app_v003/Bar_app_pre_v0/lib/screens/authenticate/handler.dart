//**This file contains a function that will handle if the
// user wants to show login or registration screen or UI. */

import 'package:bar_lounge/screens/authenticate/login.dart';
import 'package:bar_lounge/screens/authenticate/register.dart';
import 'package:flutter/material.dart';

class Handler extends StatefulWidget {
  const Handler({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Handler();
  }
}

class _Handler extends State<Handler> {
  bool showSignin = true;

  void toggleView() {
    setState(() {
      showSignin = !showSignin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignin) {
      return Login(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
