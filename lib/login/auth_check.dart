import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:music_lyrics/screens/auth/auth_welcome.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/special_widget/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return MainScreen();
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Something went wrong'.tr),
              );
            } else {
              return WelcomeWidget();
            }
          },
        ),
      );
}
