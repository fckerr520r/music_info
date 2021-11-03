import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_lyrics/constants/specific_pic.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/logic/cubit/receive_user/receive_user_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;
import 'package:get/get.dart';

class DrawerMain extends StatelessWidget {
  DrawerMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Style.Colors.backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            BlocBuilder<ReceiveUserCubit, ReceiveUserState>(
              builder: (context, state) {
                if (state is ReceiveUserComplete)
                  return UserAccountsDrawerHeader(
                    accountName: state.user!.displayName != null
                        ? Text(
                            state.user!.displayName!,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          )
                        : Text(''),
                    accountEmail: Text(
                      state.user!.email!,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      radius: 40,
                      backgroundImage: state.user!.photoURL != null
                          ? NetworkImage(state.user!.photoURL!)
                          : AssetImage(SpecificPic.defaltUserPhoto)
                              as ImageProvider,
                    ),
                    decoration: BoxDecoration(
                      color: Style.Colors.backgroundColorLight,
                    ),
                  );
                else
                  return UserAccountsDrawerHeader(
                    accountEmail: Text(
                      'Error',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    accountName: null,
                  );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home'.tr,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/main_screen');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.white,
              ),
              title: Text(
                "Search".tr,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/search');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              title: Text(
                'Favorite'.tr,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/favorite');
              },
            ),
            Divider(
              color: Style.Colors.backgroundColorLight,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings".tr,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
            Divider(
              color: Style.Colors.backgroundColorLight,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Style.Colors.letterColorRed,
              ),
              title: Text(
                "Log out".tr,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Style.Colors.letterColorRed),
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
