import 'package:flutter/material.dart';
import 'colors.dart';

class AppThemingManager {
  AppThemingManager._();

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'PlexSansArabic',
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    appBarTheme: _appBarTheme,
  );
  // Light Theme
  static ThemeData ligthTheme = ThemeData(
    fontFamily: 'PlexSansArabic',
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: ColorsManager.mainBlue,
    ),
    appBarTheme: _appBarTheme,
  );
  // AppBar Theme
  static final AppBarTheme _appBarTheme = AppBarTheme(
    scrolledUnderElevation: null,
    backgroundColor: ColorsManager.mainWhite,
    iconTheme: IconThemeData(
      color: ColorsManager.darkBlue,
    ),
    elevation: null,
    color: null,
  );
}
