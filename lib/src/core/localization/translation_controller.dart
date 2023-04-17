import 'package:brand_city/src/core/services/storage_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/config.dart';

class TranslationController extends GetxController {
  final _storege = Get.find<StorageService>();
  final _config = Get.find<Configs>();

  Locale? language;
  // String? get languageCode => language.languageCode;

  void changeLang(String langcode) {
    Locale locale = Locale(langcode);
    _storege.write(_config.language, langcode);
    Get.updateLocale(locale);
    update();
  }

  @override
  void onInit() {
    var theLang = _storege.read(_config.language);
    if (theLang == _config.arabic) {
      language = Locale(_config.arabic);
      debugPrint('arab language');
    } else if (theLang == _config.english) {
      language = Locale(_config.english);
      debugPrint('english language');
    } else if (theLang == _config.kurdish) {
      language = Locale(
        _config.kurdish,
      );
    } else {
      debugPrint('device language');
    }
    super.onInit();
  }
}
