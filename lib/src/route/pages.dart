import 'package:brand_city/src/features/category/category_page.dart';
import 'package:brand_city/src/features/dashboard/di/dashboard_di.dart';
import 'package:brand_city/src/features/home/home_page.dart';
import 'package:brand_city/src/features/locations/location_page.dart';
import 'package:brand_city/src/features/onboarding/onboarding_page.dart';
import 'package:brand_city/src/features/splash/business_logic/splash_di.dart';
import 'package:get/get.dart';

import 'package:brand_city/src/features/auth/sign_in/sign_in_page.dart';
import 'package:brand_city/src/features/auth/sign_up/sign_up_page.dart';
import 'package:brand_city/src/features/auth/verification/verification_otp_page.dart';
import 'package:brand_city/src/features/brands/brands_page.dart';
import 'package:brand_city/src/features/dashboard/dashboard_view.dart';
import 'package:brand_city/src/features/language/language_page.dart';
import 'package:brand_city/src/features/splash/splash_page.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: Routers.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routers.onboarding,
      page: () => OnboardingPage(),
    ),
    GetPage(
      name: Routers.language,
      page: () => LanguagePage(),
      // middlewares: [MainMiddleware()],
    ),
    GetPage(
      name: Routers.location,
      page: () => const LocationPage(),
    ),
    // GetPage(
    //   name: Routers.home,
    //   page: () => HomePage(),
    //   binding: DashboardBinding(),
    // ),
    GetPage(
      name: Routers.dashboard,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routers.signIn,
      page: () => const SignInPage(),
    ),
    GetPage(
      name: Routers.signUp,
      page: () => const SignUpPage(),
    ),
    GetPage(
      name: Routers.verification,
      page: () => const VerificationOtpPage(),
    ),
    GetPage(
      name: Routers.category,
      page: () => const CategoryPage(),
    ),
    GetPage(
      name: Routers.brands,
      page: () => const BrandsPage(),
    ),
  ];
}
