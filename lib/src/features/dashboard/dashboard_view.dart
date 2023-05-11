import 'package:brand_city/src/core/constant/assets_manager.dart';
import 'package:brand_city/src/features/dashboard/controllers/dashboard_controller.dart';
import 'package:brand_city/src/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(
              Icons.menu_outlined,
              color: Colors.white,
            ),
          ),
        ],
        title: Image.asset(
          ImageManager.appLogo2,
          color: Colors.white,
          width: 50,
          height: 50,
        ),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.pages[controller.selectedIndex],
        ),
      ),
      bottomNavigationBar: Obx(
        () => Directionality(
          textDirection: TextDirection.ltr,
          child: BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            onTap: controller.changeIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
