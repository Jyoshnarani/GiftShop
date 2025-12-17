import 'package:flutter/material.dart';

import '../constants/constants.dart';

CheckboxThemeData checkboxThemeDataLight = CheckboxThemeData(
  checkColor: WidgetStateProperty.all(whiteColor5),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(defaultBorderRadius / 2),
    ),
  ),
  side: const BorderSide(color: whiteColor40),
);


CheckboxThemeData checkboxThemeDataDark = CheckboxThemeData(
  checkColor: WidgetStateProperty.all(Colors.white),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(defaultBorderRadius / 2),
    ),
  ),
  side: const BorderSide(color: whiteColor40),
);