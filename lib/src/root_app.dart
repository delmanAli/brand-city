import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'route/pages.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,

      title: 'ZUBENE',
      debugShowCheckedModeBanner: false,
      // theme: ThemeManager.themeLightEng,
      theme: ThemeData.dark(),
      // locale: languageController.language ?? Locale(_config.english),
      // fallbackLocale: Locale(_config.english),
      // translations: TranslationManager(),
      // initialBinding: InitialBindings(),
      getPages: AppPages.pages,
      initialRoute: Routes.splash,
      defaultTransition: Transition.fadeIn,
    );
  }
}
