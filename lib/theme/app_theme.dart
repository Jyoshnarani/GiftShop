import 'package:e_commerce/theme/button_theme.dart';
import 'package:e_commerce/theme/input_decoration_theme.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'checkbox_themedata.dart';
import 'theme_data.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: "Plus Jakarta",
    primarySwatch: primaryMaterialColor,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: whiteColor,
    iconTheme: const IconThemeData(color: blackColor),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: blackColor40)),
    elevatedButtonTheme: elevatedButtonThemeDataLight,
    textButtonTheme: textButtonThemeDataLight,
    outlinedButtonTheme: outlinedButtonThemeLight(),
    inputDecorationTheme: lightInputDecorationTheme,
    checkboxTheme: checkboxThemeDataLight.copyWith(
      side: const BorderSide(color: blackColor40),
    ),
    appBarTheme: appBarLightTheme,
    scrollbarTheme: scrollbarThemeData,
    dataTableTheme: dataTableLightThemeData,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: primaryColor,
      surface: whiteColor,
      error: errorColor,
      onPrimary: whiteColor,
      onSecondary: whiteColor,
      onSurface: blackColor,
      onError: whiteColor,
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return primaryColor;
        }
        return null;
      }),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: "Plus Jakarta",
    primarySwatch: primaryMaterialColor,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.black,
    iconTheme: const IconThemeData(color: whiteColor),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: whiteColor40)),
    textButtonTheme: textButtonThemeDataDark,
    outlinedButtonTheme: outlinedButtonThemeDark(),
    inputDecorationTheme: lightInputDecorationTheme,
    elevatedButtonTheme: elevatedButtonThemeDataDark,
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return primaryColor;
        }
        return null;
      }),
    ),
    appBarTheme: appBarDarkTheme,
    scrollbarTheme: scrollbarThemeData,
    dataTableTheme: dataTableLightThemeData,
    colorScheme: ColorScheme.dark(
      primary: primaryColor,
      secondary: primaryColor,
      surface: Colors.grey.shade900,
      error: errorColor,
      onPrimary: whiteColor,
      onSecondary: whiteColor,
      onSurface: whiteColor,
      onError: blackColor,
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return primaryColor;
        }
        return null;
      }),
    ),
  );
}
