import 'package:flutter/material.dart';

class TColorsClass {
  TColorsClass._();

/// app basic colors
  static const Color primaryColor = Color(0xFF4B68FF);
  static const Color secondaryColor = Color(0x0fffe24b);
  static const Color accentColor = Color(0xFFb0c7ff);
  /// gradient colors
  static const Gradient linearGradientColor = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.77, -0.707),
    colors: 
  [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4), 
  ]);

/// Text Colors
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF6C7570);
  static const Color textWhiteColor = Colors.white;

/// background colours
  static const Color lightColor = Color(0xFFF6F6F6);
  static const Color darkColor = Color(0xFF272727);
  static const Color primaryBackgroundColor = Color(0xFFF3F5FF);

/// Background Container colors
  static const Color lightContainerColor = Color(0xFFF6F6F6);
  static  Color darkContainerColor = Colors.white.withOpacity(0.1);
  
//**Button colors */
  static const Color buttonPrimaryColor = Color(0xFF4b68ff);
  static const Color buttonSecondaryColor = Color(0xFF6C757D);
  static const Color buttonDisabledColor = Color(0xFFC4C4C4);
 
/// border colors
static const Color borderPrimaryColor = Color(0xFFD9D9D9);
  static const Color borderSecondaryColor = Color(0xFFE6E6E6);


/// Error and validation colors
static const Color errorColori = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF388E3C);
  static const Color warningColor = Color(0xFFF57C00);
  static const Color infoColor = Color(0xFF1976D2);
//**Neutral shades */
static const Color blackToneColor = Color(0xFF232323);
  static const Color darkerGreyToneColor = Color(0xFF4F4F4F);
  static const Color darkGreyToneColor = Color(0xFF939393);
  static const Color greyToneColor = Color(0xFFE0E0E0);
  static const Color softGreyToneColor = Color(0xFFF4F4F4);
  static const Color lightGreyToneColor = Color(0xFFF9F9F9);
  static const Color whiteColor = Color(0xFFFFFFFF);
//** */
}