import 'package:flutter/material.dart';
import 'package:thecocktailbar_app/utils/theme/custom_themes/text_theme.dart';
import 'package:thecocktailbar_app/utils/theme/custom_themes/elevated_button_theme.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
//* this class is reusuable and used for light and dark mode theme settings
//*//

class CocktailbarappTheme{
  CocktailbarappTheme._();

/// Light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme:TChipThemeclass.LightChipTheme ,
    dialogBackgroundColor: Colors.white,
    appBarTheme: TAppbarThemeClass.LightAppBartheme,
    checkboxTheme: TCheckboxThemeClass.LightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.LightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonThemeclass.LightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonThemeClass.LightElevateButtonTheme,
    inputDecorationTheme: TTextFieldThemeClass.LightInputDecorationTheme,
  );

/// Dark theme
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme:TChipThemeclass.DarkChipTheme ,
    dialogBackgroundColor: Colors.black,
    appBarTheme: TAppbarThemeClass.DarkAppBartheme,
    checkboxTheme: TCheckboxThemeClass.DarkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.DarkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonThemeclass.DarkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonThemeClass.DarkElevateButtonTheme,
    inputDecorationTheme: TTextFieldThemeClass.DarkInputDecorationTheme,
  );
}