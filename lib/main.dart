import 'package:brand_city/src/core/services/geolocator_service.dart';
import 'package:brand_city/src/root_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/core/services/storage_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialService();
  runApp(RootApp());
}

// initialaiz all services here like get_storage and firebase Fcm and etc.
initialService() async {
  await Get.putAsync(() => StorageService().init());
  await Get.putAsync(() => GeolocatorService().init());
}
