import 'package:brand_city/src/core/localization/ar/ar_translation.dart';
import 'package:brand_city/src/core/localization/en/en_translation.dart';
import 'package:brand_city/src/core/localization/ku/ku_translation.dart';
import 'package:get/get.dart';

import '../constant/config.dart';

class TranslationManager extends Translations {
  final _config = Get.find<Configs>();
  @override
  Map<String, Map<String, String>> get keys => {
        _config.arabic: ar,
        _config.english: en,
        _config.kurdish: ku,
      };
}
