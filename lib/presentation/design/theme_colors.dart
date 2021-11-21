import 'package:flutter/material.dart';

class Colors {
  static const letterMainColor = Color(0xFFC8CBCC);
  static const backgroundColorLight = Color(0xFF2b2b2b);
  static const backgroundColor = Color(0xFF1f1f1f);
  static const letterColorRed = Color(0xFFFF5353);
  static const letterColorGreyLight = Color(0xFFCCCCCC);
}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor.replaceFirst('', 'FF');
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
