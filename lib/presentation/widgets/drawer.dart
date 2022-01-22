import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/constants/assets_app_picture.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/logic/cubit/receive_user/receive_user_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:ui/ui.dart';

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
                return state.map(
                  loading: (loading) => const Center(child: LoadingWidget()),
                  loaded: (loaded) {
                    final user = loaded.user;
                    return UserAccountsDrawerHeader(
                      accountName: user?.displayName != null
                          ? Text(
                              loaded.user!.displayName!,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            )
                          : const SizedBox(),
                      accountEmail: user?.email != null
                          ? Text(
                              user!.email!,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            )
                          : const SizedBox(),
                      currentAccountPicture: CircleAvatar(
                        radius: 50,
                        backgroundImage: user?.photoURL != null
                            ? NetworkImage(user!.photoURL!)
                            : const AssetImage(AssetsAppPicture.defaltUserPhoto)
                                as ImageProvider,
                      ),
                      decoration: const BoxDecoration(
                        color: style.Colors.backgroundColorLight,
                      ),
                    );
                  },
                  error: (error) => const UserAccountsDrawerHeader(
                    accountEmail: Text(
                      'Error',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    accountName: null,
                  ),
                );
              },
            ),
            // DrawerPoint(
            //   nameOfPoint: const Text('Home'),
            //   icon: Icons.home,
            //   onTap: () {
            //     Navigator.of(context).pushReplacementNamed('/main_screen');
            //   },
            // ),
            // DrawerPoint(
            //   nameOfPoint: const Text('Search'),
            //   icon: Icons.search,
            //   onTap: () {
            //     Navigator.of(context).pushReplacementNamed('/search');
            //   },
            // ),
            // DrawerPoint(
            //   nameOfPoint: const Text('Favorite'),
            //   icon: Icons.bookmark,
            //   onTap: () {
            //     Navigator.of(context).pushReplacementNamed('/favorite');
            //   },
            // ),
            // const Divider(
            //   color: style.Colors.backgroundColorLight,
            //   thickness: 1,
            // ),
            DrawerPoint(
              nameOfPoint: const Text('Settings'),
              icon: const Icon(Icons.settings),
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
                  color: style.Colors.letterColorRed,
                ), // TODO цвет
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
