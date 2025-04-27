import 'package:flutter/material.dart';
import 'package:thecocktailbar_app/utils/theme/theme.dart';

void main() {
  //ToDo: add widgets binding
  //ToDo: init local storage
  //ToDo; awair Native Splash
  //Todo: initialize Firebase
  //Todo:Initialize authentication

//TColorsClass.

  runApp(const Cocktailbarapp());
}

/// use this class to setup theme, initialize bindings,any animations, etc
class Cocktailbarapp extends StatelessWidget {
  const Cocktailbarapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: CocktailbarappTheme.lightTheme,
      darkTheme: CocktailbarappTheme.darkTheme,
    );
  }
}