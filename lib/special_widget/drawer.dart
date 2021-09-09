import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/firebase_service/google_sing_in.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

class DrawerMain extends StatefulWidget {
  DrawerMain({Key? key}) : super(key: key);

  @override
  _DrawerMainState createState() => _DrawerMainState();
}

class _DrawerMainState extends State<DrawerMain> {
  dynamic user = FirebaseAuth.instance.currentUser;
  final String assetUserPhoto = 'assets/images/UserPhoto.jpg';

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Style.Colors.backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: user.displayName! != null
                  ? Text(
                      user.displayName!,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    )
                  : null,
              accountEmail: Text(
                user.email!,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 40,
                backgroundImage: user.photoURL! != null
                    ? NetworkImage(user.photoURL!)
                    : AssetImage(assetUserPhoto) as ImageProvider,
              ),
              decoration: BoxDecoration(
                color: Style.Colors.backgroundColorLight,
              ),
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
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
