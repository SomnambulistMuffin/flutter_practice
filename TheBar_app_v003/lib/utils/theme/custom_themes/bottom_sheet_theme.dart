import 'package:flutter/material.dart';

/// theme for the bottom sheet

class TBottomSheetTheme{
  TBottomSheetTheme._();
/// light bottom sheet theme attributes
  static BottomSheetThemeData LightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );
//**dark bottom sheet theme atrribute */
  static BottomSheetThemeData DarkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );
}