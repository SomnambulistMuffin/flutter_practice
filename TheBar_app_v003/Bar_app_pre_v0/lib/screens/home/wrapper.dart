//** This will handle to show the home page if a user is already authenticated
// or call handler.dart for an unauthenticated user. */

//** The wrapper will act as middleware that will filter
//authenticated users and redirect them to either the Home page or the
//login page (handler.dart) */

// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:bar_lounge/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'package:bar_lounge/models/firebaseuser.dart';
import 'package:bar_lounge/screens/authenticate/handler.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser?>(context);

    if (user == null) {
      return const Handler();
    } else {
      return const Home();
    }
  }
}
