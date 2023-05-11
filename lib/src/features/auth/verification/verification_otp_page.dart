import 'package:auto_size_text/auto_size_text.dart';
import 'package:brand_city/src/common_widgets/primry_button_widget.dart';
import 'package:brand_city/src/core/constant/color_manager.dart';
import 'package:brand_city/src/features/auth/business_logic/controllers/sign_up_controller.dart';
import 'package:brand_city/src/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationOtpPage extends GetView<SignUpController> {
  const VerificationOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: Get.height * 0.4),
                  AutoSizeText(
                    'Verification Code',
                    style: Get.textTheme.headlineLarge!.copyWith(
                      color: ColorManager.secondaryBlackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                    maxFontSize: 26,
                    minFontSize: 18,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    text: TextSpan(
                      text: 'Please Enter Code Sent \n',
                      style: Get.textTheme.headlineLarge!.copyWith(
                        color: Colors.grey[500],
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: 'To ',
                          style: Get.textTheme.headlineLarge!.copyWith(
                            color: Colors.grey[500],
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: ' 07519197010',
                          style: Get.textTheme.headlineLarge!.copyWith(
                            color: ColorManager.primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 21,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Get.height * 0.1),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: PinCodeTextField(
                      appContext: context,
                      length: 6,
                      obscureText: false,
                      enableActiveFill: false,
                      textStyle: Get.textTheme.bodyLarge,
                      keyboardType: TextInputType.phone,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        inactiveColor:
                            ColorManager.secondaryColor.withOpacity(0.4),
                        activeColor: Get.theme.primaryColor,
                        selectedColor: Get.theme.primaryColor,
                        shape: PinCodeFieldShape.underline,
                        activeFillColor: ColorManager.scaffoldColor,
                        inactiveFillColor: ColorManager.scaffoldColor,
                        selectedFillColor: ColorManager.scaffoldColor,
                        fieldHeight: 45,
                        fieldWidth: 45,
                        borderWidth: 1,
                      ),
                      animationDuration: const Duration(milliseconds: 200),
                      onCompleted: (value) {
                        // controller.otpCode.value = value; // later define
                      },
                      onChanged: (String value) {},
                    ),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: Get.width * 0.8,
                    height: 60,
                    child: PrimeryButtonWidget(
                      foregroundColor: ColorManager.primaryColor,
                      onPressed: () {
                        Get.offNamed(Routers.dashboard);
                      },
                      text: 'Verify',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend Code',
                      style: Get.textTheme.bodyLarge!.copyWith(
                        color: ColorManager.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
