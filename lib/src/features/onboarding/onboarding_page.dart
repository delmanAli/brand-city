import 'package:auto_size_text/auto_size_text.dart';
import 'package:brand_city/src/core/constant/assets_manager.dart';
import 'package:brand_city/src/core/constant/color_manager.dart';
import 'package:brand_city/src/features/onboarding/buisness_logic/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorManager.scaffoldColor,

      body: GetBuilder<OnboardingController>(
        builder: ((_) {
          return SafeArea(
            child: Stack(
              children: [
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: () {
                              controller.skip();
                            },
                            child: const Text('Skip')),
                      ),
                    ),
                    Expanded(
                      child: PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        controller: controller.pageController,
                        onPageChanged: (val) {
                          controller.onPageChanged(val);
                        },
                        itemCount: controller.onBoardingList.length,
                        itemBuilder: (ctx, i) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 10.0,
                              right: 10.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: double.infinity,
                                  child: Lottie.asset(
                                    controller.onBoardingList[i].image!
                                        .toString(),
                                    repeat: true,
                                  ),
                                ),
                                AutoSizeText(
                                  controller.onBoardingList[i].title!
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 21.0,
                                    color: ColorManager.secondaryGrayColor,
                                  ),
                                  maxLines: 1,
                                  maxFontSize: 25,
                                  minFontSize: 18,
                                ),
                                const SizedBox(height: 8),
                                AutoSizeText(
                                  controller.onBoardingList[i].body!.toString(),
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  maxFontSize: 18,
                                  minFontSize: 13,
                                ),
                                const SizedBox(height: 20),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SmoothPageIndicator(
                                        controller: controller.pageController,
                                        effect: WormEffect(
                                          dotColor:
                                              ColorManager.secondaryGrayColor,
                                          activeDotColor:
                                              ColorManager.primaryColor,
                                          dotHeight: 10,
                                          dotWidth: 10,
                                          spacing: 6.0,
                                        ),
                                        count: controller.onBoardingList.length,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: -60,
                  right: -50,
                  child: Image(
                    image: const AssetImage(
                      ImageManager.appLogo2,
                    ),
                    height: 200,
                    width: 220,
                    fit: BoxFit.contain,
                    color: ColorManager.secondaryGrayColor,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
