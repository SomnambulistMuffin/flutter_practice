import 'package:flutter/material.dart';

//**custom class for light and dark themes */

class TCheckboxThemeClass{
  TCheckboxThemeClass._();

  /// customizable light text theme

static CheckboxThemeData LightCheckboxTheme = CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.white;
    }else{
      return Colors.black;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((states){
    if (states.contains(WidgetState.selected)) {
      return Colors.blue;
    } else {
      return Colors.transparent;
    }
  })
);

/// Customizable dark text theme

static CheckboxThemeData DarkCheckboxTheme = CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.black;
    }else{
      return Colors.white;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((states){
    if (states.contains(WidgetState.selected)) {
      return Colors.blue;
    } else {
      return Colors.transparent;
    }
  })
);
}