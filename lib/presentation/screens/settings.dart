import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/constants/specific_pic.dart';
import 'package:music_lyrics/logic/cubit/change_lang/change_lang_cubit.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/logic/cubit/receive_user/receive_user_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;

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
            if (state is ChangeLangLoaded) {
              return AlertDialog(
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
                    itemBuilder: (context, index) => InkWell(
                      child: Row(
                        children: [
                          CircleFlag(
                            state.locales[index]['id']!,
                            size: 30,
                          ),
                          const SizedBox(width: 22),
                          Text(
                            state.locales[index]['name']!,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      onTap: () => {
                        context
                            .read<ChangeLangCubit>()
                            .updateLang(state.locales[index]['locale']!),
                        Navigator.of(context).pop(),
                      },
                    ),
                  ),
                ),
              );
            } else {
              Navigator.of(context).pop();
            }
            return const SizedBox.square();
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
          if (state is ReceiveUserComplete) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.grey,
                    backgroundImage: state.user!.photoURL != null
                        ? NetworkImage(state.user!.photoURL.toString())
                        : const AssetImage(SpecificPic.defaltUserPhoto)
                            as ImageProvider,
                  ),
                  const SizedBox(height: 5),
                  if (state.user!.displayName != null)
                    Text(
                      state.user!.displayName.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  const SizedBox(height: 5),
                  Text(
                    state.user!.email.toString(),
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
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
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: style.Colors.backgroundColorLight,
                              ),
                              onPressed: () => showLocalDialog(context),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(width: 30),
                                  Text(
                                    'Language'.tr,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: style.Colors.backgroundColorLight,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                                BlocProvider.of<UserCheckCubit>(context,
                                        listen: false)
                                    .logout();
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.logout,
                                    color: style.Colors.letterColorRed,
                                  ),
                                  const SizedBox(width: 30),
                                  Text(
                                    'Log out'.tr,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: style.Colors.letterColorRed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return const Text('xd');
          }
        },
      ),
    );
  }
}
