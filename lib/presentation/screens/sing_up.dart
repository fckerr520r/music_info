import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:ui/ui.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool hidePassword = true;
  bool hideConfirmPassword = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleWithIcon(
          text: Text('Sing up'.tr),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            DefaultAppTextFormField(
              textEditingController: _emailController,
              labelText: 'Email'.tr,
              validator: (input) =>
                  input!.isNotEmpty ? null : 'Email should be valid'.tr,
              prefixIcon: const Icon(
                EvaIcons.emailOutline,
                color: Colors.grey,
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            DefaultAppTextFormField(
              obscureText: hidePassword,
              labelText: 'Password'.tr,
              textEditingController: _passwordController,
              prefixIcon: const Icon(
                Icons.vpn_key,
                color: Colors.grey,
              ),
              validator: (input) => input!.length < 6
                  ? 'Password should be more than 6 characters'.tr
                  : null,
              autocorrect: false,
              keyboardType: TextInputType.text,
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
            const SizedBox(height: 10),
            DefaultAppTextFormField(
              obscureText: hideConfirmPassword,
              labelText: 'Confirm password'.tr,
              textEditingController: _confirmPasswordController,
              prefixIcon: const Icon(
                Icons.vpn_key,
                color: Colors.grey,
              ),
              validator: (input) => input!.length < 6
                  ? 'Password should be more than 6 characters'.tr
                  : null,
              autocorrect: false,
              keyboardType: TextInputType.text,
              suffixIcon: IconButton(
                color: Colors.grey.withOpacity(0.5),
                icon: Icon(hideConfirmPassword
                    ? Icons.visibility_off
                    : Icons.visibility),
                onPressed: () {
                  setState(
                    () {
                      hideConfirmPassword = !hideConfirmPassword;
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: RedClicableText(
                text: Text('Sing up'.tr),
                onTap: () {
                  if (_passwordController.text.trim() ==
                      _confirmPasswordController.text.trim()) {
                    BlocProvider.of<UserCheckCubit>(context, listen: false)
                        .emailRegister(_emailController.text.trim(),
                            _passwordController.text.trim());
                    Navigator.of(context).pop();
                  } else {
                    Fluttertoast.showToast(msg: "Passwords don't match".tr);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
