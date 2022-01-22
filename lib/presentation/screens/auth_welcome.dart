import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/constants/assets_app_picture.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:ui/ui.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: 5 / 1.5,
              child: Image.asset(
                AssetsAppPicture.assetMainLogo,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 300,
                  child: DefaultButton(
                    text: Text('Continue with Google'.tr),
                    icon: const Icon(EvaIcons.google),
                    onPressed: () {
                      BlocProvider.of<UserCheckCubit>(context, listen: false)
                          .googleLogin();
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RedClicableText(
                        text: Text('Sing in'.tr),
                        onTap: () {
                          Navigator.of(context).pushNamed('/sing_in');
                        },
                      ),
                      RedClicableText(
                        text: Text('Sing up'.tr),
                        onTap: () {
                          Navigator.of(context).pushNamed('/sing_up');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
