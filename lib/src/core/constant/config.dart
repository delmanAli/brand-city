import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Configs {
  static Configs get to => Get.find();
  //firebase
  final String userCollection = 'users';
  final String brandsCollection = 'brands';
  final String productCollection = 'products';
  final String categoryCollection = 'categories';
  final String subCategoryCollection = 'subCategories';
  final String orderCollection = 'orders';
  final String adsCollection = 'ads';

  //map
  final String googleApiKey = "";

  //sizes
  final double kscreenPadding = 20.0;
  final double defaultPadding = 16.0;
  final double defaultRadius = 8.0;
  final double defaultIconSize = 24.0;
  final double defaultIconSizeSmall = 16.0;

  //language code
  final String language = 'language';
  final String english = 'en';
  final String arabic = 'ar';
  final String kurdish = 'fa';

  //onboarding
  final String onboardingKey = "onboarding";
  final String onboardingValue = "1";

  //status
  Map<String, Color> orderStatusColor = {};
}
