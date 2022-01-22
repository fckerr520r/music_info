import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/constants/assets_app_picture.dart';
import 'package:music_lyrics/logic/cubit/change_lang/change_lang_cubit.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/logic/cubit/receive_user/receive_user_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:ui/ui.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void showLocalDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => BlocProvider(
        create: (context) => GetIt.I.get<ChangeLangCubit>(),
        child: BlocBuilder<ChangeLangCubit, ChangeLangState>(
          builder: (context, state) {
            return state.map(
              initial: (initial) => const SizedBox.square(),
              loaded: (loaded) => AlertDialog(
                backgroundColor: style.Colors.backgroundColor,
                title: Text(
                  'Select a language'.tr,
                  style: const TextStyle(color: Colors.white),
                ),
                content: SizedBox(
                  width: double.maxFinite,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 2,
                    separatorBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Divider(
                          color: Colors.white,
                        ),
                      );
                    },
                    itemBuilder: (context, index) => TextWithCurcleFlag(
                      curcleFlag: CircleFlag(
                        loaded.locales[index]['id']!,
                        size: 30,
                      ),
                      onTap: () {
                        context
                            .read<ChangeLangCubit>()
                            .updateLang(loaded.locales[index]['locale']!);
                        Navigator.of(context).pop();
                      },
                      text: Text(loaded.locales[index]['name']!),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ReceiveUserCubit, ReceiveUserState>(
        builder: (context, state) {
          return state.map(
            loading: (loading) => const Center(child: LoadingWidget()),
            loaded: (loaded) {
              final user = loaded.user;
              return Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    UserInformationColumnWidget(
                      userPicture: user?.photoURL != null
                          ? NetworkImage(user!.photoURL.toString())
                          : const AssetImage(AssetsAppPicture.errorSongPicture)
                              as ImageProvider,
                      userEmail: user != null
                          ? Text(user.email.toString())
                          : const SizedBox(),
                      userName: user?.displayName != null
                          ? Text(user!.displayName.toString())
                          : null,
                    ),
                    const SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Settings'.tr,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        Column(
                          children: [
                            SettingsButton(
                              text: Text('Language'.tr),
                              onPressed: () => showLocalDialog(context),
                              preficsIcon: const Icon(Icons.settings),
                            ),
                            SettingsButton(
                              widgetClildColor: style.Colors.letterColorRed,
                              preficsIcon: const Icon(Icons.logout),
                              text: Text('Log out'.tr),
                              onPressed: () {
                                Navigator.of(context).pop();
                                BlocProvider.of<UserCheckCubit>(context,
                                        listen: false)
                                    .logout();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            error: (error) => InfoScreenWidget(
              child: Text('Something went wrong'.tr),
            ),
          );
        },
      ),
    );
  }
}
