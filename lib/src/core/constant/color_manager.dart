// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class ColorManager {
  static Color primaryColor = HexColor.fromHex("#2F4EA0");

  static Color secondaryColor = HexColor.fromHex("#243A75");
  static Color secondaryBlackColor = HexColor.fromHex("#2F2E41");
  static Color secondaryGrayColor = HexColor.fromHex("#B2CFF3");

  static Color errorColor = HexColor.fromHex("#CC0000");
  static Color scaffoldColor = HexColor.fromHex("#DFDFDF");
  static Color acsYelloColor = HexColor.fromHex("#FFCCCC");
  static Color whiteColor = HexColor.fromHex("#FFFFFF");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
