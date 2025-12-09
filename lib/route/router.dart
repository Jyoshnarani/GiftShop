import 'package:e_commerce/entry_point.dart';
import 'package:flutter/material.dart';

import 'screen_export.dart';

// Yuo will get 50+ screens and more once you have the full template
// 🔗 Full template: https://theflutterway.gumroad.com/l/fluttershop

// NotificationPermissionScreen()
// PreferredLanguageScreen()
// SelectLanguageScreen()
// SignUpVerificationScreen()
// ProfileSetupScreen()
// VerificationMethodScreen()
// OtpScreen()
// SetNewPasswordScreen()
// DoneResetPasswordScreen()
// TermsOfServicesScreen()
// SetupFingerprintScreen()
// SetupFingerprintScreen()
// SetupFingerprintScreen()
// SetupFingerprintScreen()
// SetupFaceIdScreen()
// OnSaleScreen()
// BannerLStyle2()
// BannerLStyle3()
// BannerLStyle4()
// SearchScreen()
// SearchHistoryScreen()
// NotificationsScreen()
// EnableNotificationScreen()
// NoNotificationScreen()
// NotificationOptionsScreen()
// ProductInfoScreen()
// ShippingMethodsScreen()
// ProductReviewsScreen()
// SizeGuideScreen()
// BrandScreen()
// CartScreen()
// EmptyCartScreen()
// PaymentMethodScreen()
// ThanksForOrderScreen()
// CurrentPasswordScreen()
// EditUserInfoScreen()
// OrdersScreen()
// OrderProcessingScreen()
// OrderDetailsScreen()
// CancleOrderScreen()
// DelivereOrdersdScreen()
// AddressesScreen()
// NoAddressScreen()
// AddNewAddressScreen()
// ServerErrorScreen()
// NoInternetScreen()
// ChatScreen()
// DiscoverWithImageScreen()
// SubDiscoverScreen()
// AddNewCardScreen()
// EmptyPaymentScreen()
// GetHelpScreen()

// ℹ️ All the comments screen are included in the full template
// 🔗 Full template: https://theflutterway.gumroad.com/l/fluttershop

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
