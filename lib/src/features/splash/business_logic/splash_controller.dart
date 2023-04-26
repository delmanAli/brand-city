import 'package:brand_city/src/route/pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // navigate to onboarding page after 3 seconds of splash screen

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routers.onboarding);
    });
  }
}
