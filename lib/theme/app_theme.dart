import 'package:flutter/material.dart';

class AppThemeData {
  static const Color appColorBlackDark = Color.fromRGBO(28, 28, 28, 1.0);
  static const Color appColorBlackLight = Color.fromRGBO(51, 51, 51, 1.0);
  static const Color appColorBlack = Color.fromRGBO(21, 21, 21, 1.0);
  static Color appColorBlackWithOpacity = Colors.black.withOpacity(0.1);
  static const Color appColorDarkGrey = Color.fromRGBO(50, 50, 50, 1.0);
  static const Color appColorGrey = Colors.grey;
  static const Color appColorLightGrey = Color.fromRGBO(168, 168, 168, 1.0);
  static const Color appColorWhite = Color.fromRGBO(250, 250, 250, 1.0);
  static const Color pureColorWhite = Color.fromARGB(255, 255, 255, 255);
  static const Color appColorGreen = Color.fromRGBO(2, 179, 116, 1.0);
  static const Color appColorRed = Color.fromARGB(255, 250, 32, 32);

  static const double appCornerRadius = 20.0;

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    primaryColor: appColorBlackDark,
    backgroundColor: appColorBlackDark,
    scaffoldBackgroundColor: appColorWhite,
    //fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(color: appColorBlackDark, elevation: 0.0),
    iconTheme: const IconThemeData(color: pureColorWhite),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: appColorGrey,
      selectionColor: appColorBlack,
      selectionHandleColor: appColorGrey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(appColorGreen),
        foregroundColor: MaterialStateProperty.all<Color>(appColorWhite),
      ),
    ),
  );
}
