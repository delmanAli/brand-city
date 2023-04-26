import 'dart:async';

import 'package:brand_city/src/core/constant/assets_manager.dart';
import 'package:brand_city/src/core/constant/config.dart';
import 'package:brand_city/src/core/services/storage_services.dart';
import 'package:brand_city/src/features/onboarding/model/onboarding_model.dart';
import 'package:brand_city/src/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final _storage = Get.find<StorageService>();
  final _config = Get.find<Configs>();
  late PageController pageController;

  int currentPage = 0;

  // next() {
  //   currentPage++;
  //   if (currentPage > onBoardingList.length - 1) {
  //     _storage.write(_config.onboardingKey, _config.onboardingVal);
  //     Get.toNamed(Routes.language);
  //   } else {
  //     pageController.animateToPage(
  //       currentPage,
  //       duration: const Duration(milliseconds: 900),
  //       curve: Curves.easeInOut,
  //     );
  //   }
  // }

  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (currentPage < onBoardingList.length - 1) {
          currentPage++;
          pageController.animateToPage(
            currentPage,
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeIn,
          );
        } else {
          currentPage = 2;
          _storage.write(_config.onboardingKey, _config.onboardingVal);
          Get.toNamed(Routers.language);
        }
      },
    );
  }

  void skip() {
    _storage.write(_config.onboardingKey, _config.onboardingVal);
    Get.toNamed(Routers.language);
  }

  final List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      title: 'title1',
      body: 'Explore  top organic fruits & grab them',
      image: LottieManager.deliveryGuy,
    ),
    OnBoardingModel(
      title: 'this is a title tow here',
      body: 'Explore  top organic fruits & grab them',
      image: LottieManager.deliveryGuy,
    ),
    OnBoardingModel(
      title: 'title3',
      body: 'Explore  top organic fruits & grab them',
      image: LottieManager.deliveryGuy,
    ),
  ];
}
