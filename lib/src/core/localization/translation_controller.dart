import 'package:brand_city/src/core/services/storage_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/config.dart';

class TranslationController extends GetxController {
  final _storege = Get.find<StorageService>();
  final _config = Get.find<Configs>();

  Locale? language;
  // String? get languageCode => language.languageCode;

  /// change language of app and save it in storage service
  /// [langcode] is the language code of the language you want to change to
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
      language = Locale(_config.kurdish);
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      debugPrint('device language');
    }
    super.onInit();
  }

  List<String> languages = ['English', 'العربية', 'کوردی'];

  List<bool> selections = List.generate(3, (index) => false).obs;

  var selectedIndex = 0.obs;

  /// change index of toggle button
  void changeIndex(int index) {
    selectedIndex.value = index;
    selections[index] = !selections[index];
    if (index == 0) {
      changeLang(_config.english);
    } else if (index == 1) {
      changeLang(_config.arabic);
    } else if (index == 2) {
      changeLang(_config.kurdish);
    } else {
      changeLang(_config.english);
    }
  }
}
