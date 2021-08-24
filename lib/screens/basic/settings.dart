import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:music_lyrics/firebase_service/google_sing_in.dart';
import 'package:music_lyrics/localization/change_lang.dart';
import 'package:provider/provider.dart';
import 'package:circle_flags/circle_flags.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final user = FirebaseAuth.instance.currentUser!;
  final String assetUserPhoto = 'assets/images/UserPhoto.jpg';
  List<Map<String, Object>> locales = ChangeLangClass().locales;

  updateLocal(Locale locale, BuildContext context) {
    ChangeLangClass().updateLocal(locale, context);
  }

  showLocalDialog(BuildContext context, locale) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
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
                      locale[index]['id'],
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    locale[index]['name'],
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onTap: () => {
                updateLocal(locale[index]['locale'], context),
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Style.Colors.backgroundColorLight,
      ),
      body: Container(
        width: double.infinity,
        color: Style.Colors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.grey,
                backgroundImage: user.photoURL != null
                    ? NetworkImage(user.photoURL!)
                    : AssetImage(assetUserPhoto) as ImageProvider,
              ),
              SizedBox(height: 5),
              user.displayName != null
                  ? Text(
                      user.displayName!,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  : SizedBox.shrink(),
              SizedBox(height: 5),
              Text(
                user.email!,
                style: new TextStyle(
                  fontSize: 15.0,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      'Settings'.tr,
                      style: new TextStyle(
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
                          onPressed: () => showLocalDialog(context, locales),
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
                            final provider = Provider.of<GoogleSignInProvider>(
                                context,
                                listen: false);
                            provider.logout();
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
        ),
      ),
    );
  }
}
