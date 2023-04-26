// import 'package:brand_city/src/core/constant/config.dart';
// import 'package:brand_city/src/core/services/storage_services.dart';
// import 'package:brand_city/src/route/pages.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class MainMiddleware extends GetMiddleware {
//   final _storage = Get.find<StorageService>();
//   final _config = Get.find<Configs>();

//   @override
//   int? priority = 0;

//   @override
//   RouteSettings? redirect(String? route) {
//     if (_storage.read(_config.language) == null) {
//       return null;
//     } else if (_storage.read(_config.onboardingKey) == null) {
//       return const RouteSettings(name: Routers.onboarding);
//     } else if (_storage.read(_config.onboardingKey) == _config.onboardingVal) {
//       return const RouteSettings(name: Routers.splash);
//     }
//   }
// }
