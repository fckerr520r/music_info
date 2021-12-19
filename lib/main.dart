import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/constants/app_translation.dart';
import 'package:music_lyrics/factory.dart';
import 'package:music_lyrics/logic/cubit/favorite/favorite_cubit.dart';
import 'package:music_lyrics/logic/cubit/home/home_cubit.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/logic/cubit/receive_user/receive_user_cubit.dart';
import 'package:music_lyrics/logic/cubit/search/search_cubit.dart';
import 'package:music_lyrics/presentation/design/text_theme.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/screens/auth_check.dart';
import 'package:music_lyrics/presentation/screens/auth_welcome.dart';
import 'package:music_lyrics/presentation/screens/favorite_screen.dart';
import 'package:music_lyrics/presentation/screens/search_screen.dart';
import 'package:music_lyrics/presentation/screens/settings.dart';
import 'package:music_lyrics/presentation/screens/sing_in.dart';
import 'package:music_lyrics/presentation/screens/sing_up.dart';
import 'package:music_lyrics/presentation/widgets/bottom_nav_bar.dart';
import 'package:music_lyrics/service/repositories/change_lang_repository.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final lang = await ChangeLangClass().changeLocal();
  Factory().initialize();
  runApp(MyApp(lang));
}

class MyApp extends StatelessWidget {
  final String lang;
  const MyApp(this.lang, {Key? key}) : super(key: key);
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
        fallbackLocale: const Locale('en'),
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  style.Colors.backgroundColorLight,
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                )),
          ),
          scaffoldBackgroundColor: style.Colors.backgroundColor,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: style.Colors.backgroundColorLight,
            selectedItemColor: style.Colors.letterColorRed,
            unselectedItemColor: style.Colors.letterColorGreyLight,
          ),
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              systemNavigationBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
              systemStatusBarContrastEnforced: true,
            ),
            backgroundColor: style.Colors.backgroundColorLight,
          ),
          colorScheme: ColorScheme.dark(
            secondary: style.Colors.backgroundColorLight,
            onSurface: Colors.grey.shade300,
          ),
          textTheme: AppTextTheme.textTheme,
        ),
        locale: lang.isNotEmpty ? Locale(lang) : Get.deviceLocale,
        routes: {
          '/auth_welcome': (context) => const WelcomeWidget(),
          '/sing_up': (context) => const SingUp(),
          '/sing_in': (context) => const SingIn(),
          '/homePage': (context) => const HomePage(),
          '/main_screen': (context) => const MainScreen(),
          '/settings': (context) => const Settings(),
          '/search': (context) => const MainSearch(),
          '/favorite': (context) => const FavoriteWidget(),
        },
        initialRoute: '/homePage',
      ),
    );
  }
}
