import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/design/theme_text_style.dart'
    as style_text;

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

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
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: style.Colors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              cursorColor: style.Colors.letterColorRed,
              cursorWidth: 1.5,
              validator: (val) =>
                  val!.isNotEmpty ? null : 'Email should be valid'.tr,
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: style.Colors.letterMainColor.withOpacity(0.3),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: style.Colors.letterMainColor.withOpacity(0.8),
                  ),
                ),
                prefixIcon: const Icon(
                  EvaIcons.emailOutline,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.text,
              autocorrect: false,
              enableSuggestions: false,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              validator: (input) => input!.length < 6
                  ? 'Password should be more than 6 characters'.tr
                  : null,
              obscureText: hidePassword,
              controller: _passwordController,
              cursorColor: style.Colors.letterColorRed,
              cursorWidth: 1.5,
              decoration: InputDecoration(
                labelText: 'Password'.tr,
                labelStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: style.Colors.letterMainColor.withOpacity(0.3),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: style.Colors.letterMainColor.withOpacity(0.8),
                  ),
                ),
                prefixIcon: const Icon(
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
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                  width: 120,
                  child: InkWell(
                    child: const Align(
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
                          style: style_text.TextStyles.clicableRedText),
                    ),
                    onTap: () {
                      BlocProvider.of<UserCheckCubit>(context, listen: false)
                          .emailAuth(_emailController.text.trim(),
                              _passwordController.text.trim());
                      Navigator.of(context).pop();
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
