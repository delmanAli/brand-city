import 'package:brand_city/src/common_widgets/logo_widget.dart';
import 'package:brand_city/src/common_widgets/secondary_button_widget.dart';
import 'package:brand_city/src/common_widgets/text_form_input_widget.dart';
import 'package:brand_city/src/core/functions/string_hardcoded.dart';
import 'package:brand_city/src/core/localization/strings.dart';
import 'package:brand_city/src/features/auth/business_logic/controllers/sign_in_controller.dart';
import 'package:brand_city/src/features/auth/social_login_icon_widget.dart';
import 'package:brand_city/src/route/pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

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
                  const LogoWidget(),
                  SizedBox(height: Get.height * 0.1),
                  TextFormInputWidget(
                    controller: TextEditingController(),
                    hintText: Strings.signIn.tr,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      Strings.forgetPassword.tr,
                      style: Get.textTheme.titleMedium!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.1),
                  SizedBox(
                    width: Get.width * 0.4,
                    child: SecondaryButtonWidget(
                      text: Strings.signIn.tr,
                      onPressed: () {
                        Get.toNamed(Routers.verification);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routers.signUp);
                    },
                    child: Text(
                      'Create an Account'.hardcoded, //translate this later
                      style: Get.textTheme.titleMedium!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Text(
                    Strings.or.tr,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SocialLoginIconWidget(
                        onTaped: () {
                          Get.toNamed(Routers.dashboard);
                        },
                        iconData: FontAwesomeIcons.google,
                        iconColor: const Color.fromARGB(255, 234, 67, 53),
                        text: Strings.logWith.tr,
                      ),
                      const SizedBox(height: 5.0),
                      SocialLoginIconWidget(
                        onTaped: () {
                          Get.toNamed(Routers.dashboard);
                        },
                        iconData: FontAwesomeIcons.facebook,
                        iconColor: const Color.fromARGB(255, 12, 82, 138),
                        text: Strings.logWith.tr,
                      ),
                    ],
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
