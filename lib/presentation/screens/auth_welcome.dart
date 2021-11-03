import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_lyrics/constants/specific_pic.dart';
// import 'package:music_lyrics/firebase_service/facebook_sing_in.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;
import 'package:music_lyrics/presentation/design/theme_text_style.dart'
    as StyleText;
import 'package:get/get.dart';

class WelcomeWidget extends StatelessWidget {
  WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Image.asset(SpecificPic.assetMainLogo, fit: BoxFit.cover),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  // _FacebookSingInWidget(),
                  // SizedBox(height: 15),
                  _GoogleSingInWidget(),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _SingInWidget(),
                        _SingUpWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SingUpWidget extends StatelessWidget {
  const _SingUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: InkWell(
        child: Align(
          child:
              Text('Sing up'.tr, style: StyleText.TextStyles.clicableRedText),
          alignment: Alignment(0.0, 0.0),
        ),
        onTap: () {
          Navigator.of(context).pushNamed('/sing_up');
        },
      ),
    );
  }
}

class _SingInWidget extends StatelessWidget {
  const _SingInWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: InkWell(
        child: Align(
          child:
              Text('Sing in'.tr, style: StyleText.TextStyles.clicableRedText),
          alignment: Alignment(0.0, 0.0),
        ),
        onTap: () {
          Navigator.of(context).pushNamed('/sing_in');
        },
      ),
    );
  }
}

class _GoogleSingInWidget extends StatelessWidget {
  const _GoogleSingInWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Style.Colors.backgroundColorLight,
          onSurface: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.0),
          ),
        ),
        onPressed: () {
          BlocProvider.of<UserCheckCubit>(context, listen: false).googleLogin();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              EvaIcons.google,
              color: Colors.white,
            ),
            SizedBox(width: 60.0),
            Text("Continue with Google".tr,
                style: StyleText.TextStyles.mainWhiteText),
          ],
        ),
      ),
    );
  }
}

// class _FacebookSingInWidget extends StatelessWidget {
//   const _FacebookSingInWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50.0,
//       width: 300.0,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           primary: Style.Colors.backgroundColorLight,
//           onSurface: Colors.white,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(9.0),
//           ),
//         ),
//         onPressed: () {
//           FacebookSignInProvider().facebookLogin();
//         },
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Icon(
//               Icons.facebook,
//               color: Colors.white,
//             ),
//             SizedBox(width: 50.0),
//             Text(
//               'Continue with Facebook'.tr,
//               style: StyleText.TextStyles.mainWhiteText,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
