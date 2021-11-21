import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeLangClass {
  final _storage = SharedPreferences.getInstance();

  final locales = [
    {
      'name': 'English',
      'id': 'us',
      'locale': 'en',
    },
    {
      'name': 'Русский',
      'id': 'ru',
      'locale': 'ru',
    },
  ];

  Future updateLocal(String locale) async {
    if (locale.isNotEmpty) {
      await saveLang(locale);
    }
    final lang = await changeLocal();
    if (lang != 'null') {
      final newLocale = Locale(lang);
      Get.updateLocale(newLocale);
    }
  }

  Future saveLang(String locale) async {
    final lang = locale;
    final storage = await _storage;
    await storage.setString('language', lang.toString());
  }

  Future<String> changeLocal() async {
    final storage = await _storage;
    final lang = storage.getString('language');
    return lang.toString();
  }
}
