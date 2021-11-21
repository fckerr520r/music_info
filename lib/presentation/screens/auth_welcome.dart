import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/constants/specific_pic.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
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
                const _GoogleSingInWidget(),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
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
              Text('Sing up'.tr, style: Theme.of(context).textTheme.headline4),
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
              Text('Sing in'.tr, style: Theme.of(context).textTheme.headline4),
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
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<UserCheckCubit>(context, listen: false).googleLogin();
        },
        child: Row(
          children: [
            const Icon(
              EvaIcons.google,
              color: Colors.white,
            ),
            const SizedBox(width: 60),
            Text(
              'Continue with Google'.tr,
              style: Theme.of(context).textTheme.button,
            ),
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
//           primary: style.Colors.backgroundColorLight,
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
//               style: styleText.TextStyles.mainWhiteText,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
