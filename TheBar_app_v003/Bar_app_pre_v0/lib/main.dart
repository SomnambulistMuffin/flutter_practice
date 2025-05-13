//**This is the first function executed when you run your flutter app */

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; //firebase libraries and dependencies inherited
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

// authentication services, models and wrappers for sign in
import 'package:bar_lounge/services/auth.dart';
import 'package:bar_lounge/models/firebaseuser.dart';
import 'package:bar_lounge/screens/home/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.black,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.black,
            textTheme: ButtonTextTheme.primary,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
          ),
          fontFamily: 'Georgia',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
          // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.cyan[600]),
        ),
        home: const Wrapper(),
      ),
    );
  }
}
