import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/constants/specific_pic.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/logic/cubit/receive_user/receive_user_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;

class DrawerMain extends StatelessWidget {
  const DrawerMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: style.Colors.backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            BlocBuilder<ReceiveUserCubit, ReceiveUserState>(
              builder: (context, state) {
                if (state is ReceiveUserComplete) {
                  return UserAccountsDrawerHeader(
                    accountName: state.user!.displayName != null
                        ? Text(
                            state.user!.displayName!,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )
                        : const Text(''),
                    accountEmail: Text(
                      state.user!.email!,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      radius: 40,
                      backgroundImage: state.user!.photoURL != null
                          ? NetworkImage(state.user!.photoURL!)
                          : const AssetImage(SpecificPic.defaltUserPhoto)
                              as ImageProvider,
                    ),
                    decoration: const BoxDecoration(
                      color: style.Colors.backgroundColorLight,
                    ),
                  );
                } else {
                  return const UserAccountsDrawerHeader(
                    accountEmail: Text(
                      'Error',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    accountName: null,
                  );
                }
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home'.tr,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/main_screen');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              title: Text(
                'Search'.tr,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/search');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              title: Text(
                'Favorite'.tr,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/favorite');
              },
            ),
            const Divider(
              color: style.Colors.backgroundColorLight,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Settings'.tr,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
            const Divider(
              color: style.Colors.backgroundColorLight,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: style.Colors.letterColorRed,
              ),
              title: Text(
                'Log out'.tr,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: style.Colors.letterColorRed),
              ),
              onTap: () {
                BlocProvider.of<UserCheckCubit>(context, listen: false)
                    .logout();
              },
            )
          ],
        ),
      ),
    );
  }
}
