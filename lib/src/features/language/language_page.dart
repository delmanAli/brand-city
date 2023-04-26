import 'package:brand_city/src/common_widgets/primry_button_widget.dart';
import 'package:brand_city/src/core/constant/color_manager.dart';
import 'package:brand_city/src/core/constant/config.dart';
import 'package:brand_city/src/core/localization/strings.dart';
import 'package:brand_city/src/core/localization/translation_controller.dart';
import 'package:brand_city/src/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends GetView<TranslationController> {
  LanguagePage({super.key});
  final config = Get.find<Configs>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              Text(
                Strings.chooseLanguage.tr,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20.0),
              Obx(
                () => ToggleButtons(
                  selectedColor: Colors.white,
                  direction: Axis.vertical,
                  isSelected: controller.selections,
                  onPressed: (int index) {
                    controller.changeIndex(index);
                  },
                  children: controller.languages
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: Get.width * 0.4,
                            height: 45,
                            decoration: BoxDecoration(
                              color: controller.selectedIndex.value ==
                                      controller.languages.indexOf(e)
                                  ? Colors.white
                                  : ColorManager.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                e,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w800,
                                  color: controller.selectedIndex.value ==
                                          controller.languages.indexOf(e)
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Your language preference can be\nchanged at any time in setting',
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              SizedBox(
                width: Get.width * 0.4,
                height: 45,
                child: PrimeryButtonWidget(
                  text: Strings.continues.tr,
                  onPressed: () {
                    Get.offAllNamed(Routers.location);
                  },
                  backgroundColor: ColorManager.primaryColor,
                ),
              ),
              const SizedBox(height: 50.0),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Powered by : TSC Company',
                  style: TextStyle(
                    fontSize: 9.0,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// get data from api using Django django-ninja
class FetchData extends GetConnect {
  Future<Response> getPosts() => get(
        'http://127.0.0.1:8000/api/todos',
      );

  // create todo with POST method
  Future<Response> addTodo(Map data) => post(
        'http://127.0.0.1:8000/api/todos',
        data,
      );
}
