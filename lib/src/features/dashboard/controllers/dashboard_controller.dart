import 'package:brand_city/src/features/cart/cart_page.dart';
import 'package:brand_city/src/features/category/category_page.dart';
import 'package:brand_city/src/features/home/home_page.dart';
import 'package:brand_city/src/features/profile_flow/profile_page.dart';
import 'package:brand_city/src/features/profile_flow/setting_page.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final _selectedIndex = 2.obs;
  int get selectedIndex => _selectedIndex.value;

  var pages = [
    const CategoryPage(),
    const CartPage(),
    const HomePage(),
    const ProfilePage(),
    const SettingPage(),
  ].obs;

  void changeIndex(int index) {
    _selectedIndex.value = index;
  }
}
