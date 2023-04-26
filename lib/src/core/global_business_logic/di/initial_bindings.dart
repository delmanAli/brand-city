import 'package:brand_city/src/core/constant/config.dart';
import 'package:brand_city/src/core/localization/translation_controller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Configs());
    Get.put(TranslationController());
  }
}
