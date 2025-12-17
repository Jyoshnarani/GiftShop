import 'package:e_commerce/entry_point.dart';
import 'package:e_commerce/screens/settings/views/display_brightness.dart';
import 'package:flutter/material.dart';

import 'screen_export.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case onboardingScreenRoute:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
    case logInScreenRoute:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case signUpScreenRoute:
      return MaterialPageRoute(builder: (context) => const SignUpScreen());
    case entryPointScreenRoute:
      return MaterialPageRoute(builder: (context) => const EntryPoint());
    case homeScreenRoute:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case profileScreenRoute:
      return MaterialPageRoute(builder: (context) => const ProfileScreen());
    case productDetailsScreenRoute:
      return MaterialPageRoute(
        builder: (context) {
          bool isProductAvailable = settings.arguments as bool? ?? true;
          return ProductDetailsScreen(isProductAvailable: isProductAvailable);
        },
      );
    case discoverScreenRoute:
      return MaterialPageRoute(builder: (context) => const DiscoverScreen());
    case bookmarkScreenRoute:
      return MaterialPageRoute(builder: (context) => const BookmarkScreen());
    case preferencesScreenRoute:
      return MaterialPageRoute(builder: (context) => const PreferencesScreen());
    case displayBrightness:
      return MaterialPageRoute(builder: (context) => const DisplayBrightness());
    case emptyWalletScreenRoute:
      return MaterialPageRoute(builder: (context) => const EmptyWalletScreen());
    case walletScreenRoute:
      return MaterialPageRoute(builder: (context) => const WalletScreen());

    default:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingScreen(),
      );
  }
}
