import 'package:flutter/material.dart';

class Colors {
  static const Color letterMainColor = const Color(0xFFC8CBCC);
  static const Color backgroundColorLight = const Color(0xFF2b2b2b);
  static const Color backgroundColor = const Color(0xFF1f1f1f);
  static const Color letterColorRed = const Color(0xFFFF5353);
  static const Color letterColorGreyLight = const Color(0xFFCCCCCC);
}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
