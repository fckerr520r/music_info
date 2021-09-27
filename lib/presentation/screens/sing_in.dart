import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;
import 'package:music_lyrics/presentation/design/theme_text_style.dart'
    as StyleText;
import 'package:get/get.dart';

class SingIn extends StatefulWidget {
  SingIn({Key? key}) : super(key: key);

  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  bool hidePassword = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sing in'.tr,
            style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Style.Colors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              cursorColor: Style.Colors.letterColorRed,
              cursorWidth: 1.5,
              validator: (val) =>
                  val!.isNotEmpty ? null : 'Email should be valid'.tr,
              controller: _emailController,
              decoration: new InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Style.Colors.letterMainColor.withOpacity(0.3),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Style.Colors.letterMainColor.withOpacity(0.8),
                  ),
                ),
                prefixIcon: Icon(
                  EvaIcons.emailOutline,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.text,
              autocorrect: false,
              enableSuggestions: false,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              validator: (input) => input!.length < 6
                  ? 'Password should be more than 6 characters'.tr
                  : null,
              obscureText: hidePassword,
              controller: _passwordController,
              cursorColor: Style.Colors.letterColorRed,
              cursorWidth: 1.5,
              decoration: new InputDecoration(
                labelText: 'Password'.tr,
                labelStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Style.Colors.letterMainColor.withOpacity(0.3),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Style.Colors.letterMainColor.withOpacity(0.8),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Colors.grey,
                ),
                suffixIcon: IconButton(
                  color: Colors.grey.withOpacity(0.5),
                  icon: Icon(
                      hidePassword ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(
                      () {
                        hidePassword = !hidePassword;
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                  width: 120,
                  child: InkWell(
                    child: Align(
                      child: Text(
                        // 'Forget password?'.tr,
                        '',
                        style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            textBaseline: TextBaseline.ideographic,
                            color: Colors.grey),
                      ),
                      alignment: Alignment(0.0, 0.0),
                    ),
                    onTap: () {
                      // soon
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 70,
                  child: InkWell(
                    child: Align(
                      child: Text('Sing in'.tr,
                          style: StyleText.TextStyles.clicableRedText),
                      alignment: Alignment(0.0, 0.0),
                    ),
                    onTap: () {
                      BlocProvider.of<UserCheckCubit>(context, listen: false)
                          .emailAuth(_emailController.text.trim(),
                              _passwordController.text.trim());
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
