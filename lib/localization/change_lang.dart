import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLangClass {
  
  final locales = [
    {
      'name': 'English',
      'id': 'us',
      'locale': const Locale('en'),
    },
    {
      'name': 'Русский',
      'id': 'ru',
      'locale': const Locale('ru'),
    },
  ];

  updateLocal(Locale locale, BuildContext context) {
    Navigator.of(context).pop();
    Get.updateLocale(locale);
  }
}