import 'package:brand_city/src/core/constant/assets_manager.dart';
import 'package:brand_city/src/core/constant/color_manager.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      padding: const EdgeInsets.only(bottom: 20.0),
      alignment: Alignment.center,
      child: Image.asset(
        ImageManager.appLogo2,
        fit: BoxFit.contain,
        color: ColorManager.secondaryBlackColor,
      ),
    );
  }
}
