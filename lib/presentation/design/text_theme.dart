import 'package:flutter/material.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;

class AppTextTheme {
  static const textTheme = TextTheme(
    headline4: TextStyle(
      // красный текст на экранах авторизации
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: style.Colors.letterColorRed,
    ),
    button: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );
}
