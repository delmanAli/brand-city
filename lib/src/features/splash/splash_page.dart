import 'package:brand_city/src/core/constant/assets_manager.dart';
import 'package:brand_city/src/core/constant/color_manager.dart';
import 'package:brand_city/src/features/splash/business_logic/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 2),
            Center(
              child: Image(
                image: const AssetImage(
                  ImageManager.appLogo,
                ),
                width: Get.width * 0.7,
                height: Get.width * 0.7,
              ),
            ),
            const Spacer(),
            const SizedBox(height: 30),
            Text(
              'Brands\nCity',
              style: GoogleFonts.roboto(
                fontSize: 42.0,
                color: ColorManager.whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Online Shopping",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      )),
    );
  }
}
