import 'package:auto_size_text/auto_size_text.dart';
import 'package:brand_city/src/common_widgets/primry_button_widget.dart';
import 'package:brand_city/src/common_widgets/text_form_input_widget.dart';
import 'package:brand_city/src/core/functions/string_hardcoded.dart';
import 'package:brand_city/src/core/localization/strings.dart';
import 'package:brand_city/src/features/auth/business_logic/controllers/sign_up_controller.dart';
import 'package:brand_city/src/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

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
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: Get.height * 0.1),
                  AutoSizeText(
                    Strings.signUp.tr,
                    style: Get.textTheme.headlineLarge!.copyWith(
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  AutoSizeText(
                    'Please enter your credentials to proceed'.hardcoded,
                    style: Get.textTheme.titleMedium!.copyWith(
                      color: Colors.grey[900],
                    ),
                  ),
                  SizedBox(height: Get.height * 0.1),

                  TextFormInputWidget(
                    controller: TextEditingController(),
                    hintText: Strings.name.tr,
                  ),
                  const SizedBox(height: 10),
                  //
                  TextFormInputWidget(
                    controller: TextEditingController(),
                    hintText: Strings.phoneNumber.tr,
                  ),
                  const SizedBox(height: 10),
                  //
                  TextFormInputWidget(
                    controller: TextEditingController(),
                    hintText: Strings.address.tr,
                  ),
                  const SizedBox(height: 10),
                  //...
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: PrimeryButtonWidget(
                      onPressed: () {
                        Get.toNamed(Routers.verification);
                      },
                      text: Strings.signUp.tr,
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routers.signIn);
                    },
                    child: Text(
                      Strings.alreadyHaveAccount.tr,
                      style: Get.textTheme.titleMedium!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
