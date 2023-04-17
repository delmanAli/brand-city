import 'package:brand_city/src/root_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialService();
  runApp(const RootApp());
}

// initialaiz all services here like get_storage and firebase Fcm and etc.
initialService() async {}
