import 'package:brand_city/src/features/auth/business_logic/controllers/auth_controller.dart';
import 'package:brand_city/src/features/auth/business_logic/controllers/sign_in_controller.dart';
import 'package:brand_city/src/features/auth/business_logic/controllers/sign_up_controller.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<SignInController>(() => SignInController());
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
