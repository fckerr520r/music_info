import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/constants/app_translation.dart';
import 'package:music_lyrics/factory.dart';
import 'package:music_lyrics/service/repositories/change_lang.dart';
import 'package:music_lyrics/logic/cubit/home/home_cubit.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/logic/cubit/receive_user/receive_user_cubit.dart';
import 'package:music_lyrics/logic/cubit/search/search_cubit.dart';
import 'package:music_lyrics/presentation/screens/auth_check.dart';
import 'package:music_lyrics/presentation/screens/auth_welcome.dart';
import 'package:music_lyrics/presentation/screens/sing_in.dart';
import 'package:music_lyrics/presentation/screens/sing_up.dart';
import 'package:music_lyrics/presentation/screens/favorite_screen.dart';
import 'package:music_lyrics/presentation/screens/search_screen.dart';
import 'package:music_lyrics/presentation/screens/settings.dart';
import 'package:music_lyrics/presentation/widgets/bottom_nav_bar.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;
import 'package:firebase_core/firebase_core.dart';

import 'package:music_lyrics/logic/cubit/favorite/favorite_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  String lang = await ChangeLangClass().changeLocal();
  Factory().initialize();
  runApp(MyApp(lang));
}

class MyApp extends StatelessWidget {
  final String lang;
  MyApp(this.lang);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCheckCubit>(
          create: (context) => GetIt.I.get<UserCheckCubit>(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => GetIt.I.get<HomeCubit>(),
        ),
        BlocProvider<SearchCubit>(
          create: (context) => GetIt.I.get<SearchCubit>(),
        ),
        BlocProvider<FavoriteCubit>(
          create: (context) => GetIt.I.get<FavoriteCubit>(),
        ),
        BlocProvider<ReceiveUserCubit>(
          create: (context) => ReceiveUserCubit(),
        ),
      ],
      child: GetMaterialApp(
        translations: AppTranslations(),
        fallbackLocale: Locale('en'),
        theme: ThemeData(
          scaffoldBackgroundColor: Style.Colors.backgroundColor,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Style.Colors.backgroundColorLight,
            selectedItemColor: Style.Colors.letterColorRed,
            unselectedItemColor: Style.Colors.letterColorGreyLight,
          ),
          appBarTheme: AppBarTheme(
            brightness: Brightness.dark,
            backgroundColor: Style.Colors.backgroundColorLight,
          ),
          colorScheme: ColorScheme.dark(
            secondary: Style.Colors.backgroundColorLight,
            onSurface: Colors.black,
          ),
        ),
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
