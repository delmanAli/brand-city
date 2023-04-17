import 'package:brand_city/src/core/constant/config.dart';
import 'package:brand_city/src/core/services/storage_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_manager.dart';

final _storage = Get.find<StorageService>();
final _config = Get.find<Configs>();

class ThemeManager {
  static ThemeData themeLight = ThemeData(
    fontFamily: fontFamilySelector(),
    primaryColor: ColorManager.primaryColor,
    // backgroundColor: ColorManager.scaffoldBackgroundColor,
    // scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      centerTitle: true,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
      elevation: 0,
      iconTheme: IconThemeData(color: ColorManager.primaryColor),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: ColorManager.primaryColor,
      secondary: ColorManager.primaryColor,
      onSecondary: ColorManager.primaryColor,
    ),

    inputDecorationTheme: InputDecorationTheme(
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.errorColor),
        borderRadius: BorderRadius.circular(4.0),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(4.0),
      ),
      hintStyle: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(
          ColorManager.primaryColor,
        ),
        elevation: MaterialStateProperty.all<double>(0.0),
        shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorManager.primaryColor,
      elevation: 0,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
    ),

    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 22.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 14.0,
        fontFamily: fontFamilySelector(),
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 10.0,
        fontFamily: fontFamilySelector(),
        fontWeight: FontWeight.w400,
      ),
      displayLarge: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 36.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 32.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.black.withOpacity(0.63),
      ),
      titleLarge: TextStyle(
        fontFamily: fontFamilySelector(),
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

fontFamilySelector() {
  debugPrint(_storage.read(_config.language.toString()));
  return _storage.read(_config.language) == _config.english
      ? fontNameEng
      : _storage.read(_config.language) == _config.arabic
          ? fontNameArb
          : _storage.read(_config.language) == _config.kurdish
              ? fontNameKrd
              : fontNameEng;
}

String? fontNameEng = GoogleFonts.roboto().fontFamily;
String? fontNameKrd = GoogleFonts.notoSansArabic().fontFamily;
String? fontNameArb = GoogleFonts.notoSansArabic().fontFamily;
