import 'package:flutter/material.dart';

import '../constants/constants.dart';

ElevatedButtonThemeData elevatedButtonThemeDataLight = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(defaultPadding),
    backgroundColor: primaryColor,
    foregroundColor: whiteColor,
    minimumSize: const Size(double.infinity, 32),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    ),
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
  ),
);

ElevatedButtonThemeData elevatedButtonThemeDataDark = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: primaryColor,
    padding: const EdgeInsets.all(defaultPadding),
    foregroundColor: blackColor,
    minimumSize: const Size(double.infinity, 32),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    ),
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeLight(
    {Color borderColor = blackColor10}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(defaultPadding),
      minimumSize: const Size(double.infinity, 32),
      side: BorderSide(width: 1.5, color: borderColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
    ),
  );
}

OutlinedButtonThemeData outlinedButtonThemeDark(
    {Color borderColor = whiteColor10}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(defaultPadding),
      minimumSize: const Size(double.infinity, 32),
      side: BorderSide(width: 1.5, color: borderColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
    ),
  );
}

final textButtonThemeDataLight = TextButtonThemeData(
  style: TextButton.styleFrom(foregroundColor: primaryColor, textStyle: const TextStyle(fontWeight: FontWeight.w500),),
);

final textButtonThemeDataDark = TextButtonThemeData(
  style: TextButton.styleFrom(foregroundColor: primaryColor, textStyle: const TextStyle(fontWeight: FontWeight.w500),),
);

