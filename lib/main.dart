import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:music_lyrics/localization/app_translation.dart';
import 'package:music_lyrics/localization/change_lang.dart';
import 'package:music_lyrics/login/auth_check.dart';
import 'package:music_lyrics/screens/auth/auth_welcome.dart';
import 'package:music_lyrics/screens/auth/sing_in.dart';
import 'package:music_lyrics/screens/auth/sing_up.dart';
import 'package:music_lyrics/screens/basic/favorite_screen.dart';
import 'package:music_lyrics/screens/basic/search_screen.dart';
import 'package:music_lyrics/screens/basic/main_screen.dart';
import 'package:music_lyrics/screens/basic/settings.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:music_lyrics/firebase_service/google_sing_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  String lang = await ChangeLangClass().changeLocal();
  runApp(MyApp(lang));
}

class MyApp extends StatelessWidget {
  final String lang;
  MyApp(this.lang);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: GetMaterialApp(
        translations: AppTranslations(),
        fallbackLocale: Locale('en'),
        locale: lang.isNotEmpty ? Locale(lang) : Get.deviceLocale,
        routes: {
          '/auth_welcome': (context) => WelcomeWidget(),
          '/sing_up': (context) => SingUp(),
          '/sing_in': (context) => SingIn(),
          '/homePage': (context) => HomePage(),
          '/main_screen': (context) => MainScreen(),
          '/settings': (context) => Settings(),
          '/search': (context) => MainSearch(),
          '/favorite': (context) => FavoriteWidget(),
        },
        initialRoute: '/homePage',
      ),
    );
  }
}
