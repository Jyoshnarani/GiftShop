import 'package:e_commerce/route/route_constants.dart';
import 'package:e_commerce/route/router.dart' as router;
import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, mode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gift Shop',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: mode,
          onGenerateRoute: router.generateRoute,
          initialRoute: signUpScreenRoute,
        );
      },
    );
  }
}
