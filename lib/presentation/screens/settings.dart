import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/constants/specific_pic.dart';
import 'package:music_lyrics/logic/cubit/change_lang/change_lang_cubit.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/logic/cubit/receive_user/receive_user_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;
import 'package:circle_flags/circle_flags.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  showLocalDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => BlocProvider(
        create: (context) => GetIt.I.get<ChangeLangCubit>(),
        child: BlocBuilder<ChangeLangCubit, ChangeLangState>(
          builder: (context, state) {
            if (state is ChangeLangLoaded)
              return AlertDialog(
                backgroundColor: Style.Colors.backgroundColor,
                title: Text(
                  'Select a language'.tr,
                  style: TextStyle(color: Colors.white),
                ),
                content: SizedBox(
                  width: double.maxFinite,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 2,
                    separatorBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Divider(
                          color: Colors.white,
                        ),
                      );
                    },
                    itemBuilder: (context, index) => InkWell(
                      child: Row(
                        children: [
                          Container(
                            child: CircleFlag(
                              state.locales[index]['id']!,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Text(
                            state.locales[index]['name']!,
                            style: TextStyle(color: Colors.white),
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
            else
              Navigator.of(context).pop();
            return SizedBox.square();
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
          if (state is ReceiveUserComplete)
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.grey,
                    backgroundImage: state.user!.photoURL != null
                        ? NetworkImage(state.user!.photoURL.toString())
                        : AssetImage(SpecificPic.defaltUserPhoto)
                            as ImageProvider,
                  ),
                  const SizedBox(height: 5),
                  state.user!.displayName != null
                      ? Text(
                          state.user!.displayName.toString(),
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      : SizedBox.shrink(),
                  const SizedBox(height: 5),
                  Text(
                    state.user!.email.toString(),
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'Settings'.tr,
                          style: TextStyle(
                              fontSize: 16.0,
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
                                primary: Style.Colors.backgroundColorLight,
                              ),
                              onPressed: () => showLocalDialog(context),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    'Language'.tr,
                                    style: new TextStyle(
                                      fontSize: 15.0,
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
                                primary: Style.Colors.backgroundColorLight,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                                BlocProvider.of<UserCheckCubit>(context,
                                        listen: false)
                                    .logout();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.logout,
                                    color: Style.Colors.letterColorRed,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    'Log out'.tr,
                                    style: new TextStyle(
                                      fontSize: 15.0,
                                      color: Style.Colors.letterColorRed,
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
          else
            return Text('xd');
        },
      ),
    );
  }
}
