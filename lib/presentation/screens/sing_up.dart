import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;
import 'package:music_lyrics/presentation/design/theme_text_style.dart'
    as StyleText;
import 'package:get/get.dart';

class SingUp extends StatefulWidget {
  SingUp({Key? key}) : super(key: key);

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
        title: Text(
          'Sing up'.tr,
          style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Style.Colors.backgroundColor,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              // new TextFormField(
              //   keyboardType: TextInputType.name,
              //   style: TextStyle(
              //     fontSize: 16.0,
              //     color: Colors.white,
              //     fontWeight: FontWeight.w400,
              //   ),
              //   controller: _usernameController,
              //   cursorColor: Style.Colors.letterColorRed,
              //   cursorWidth: 1.5,
              //   validator: (val) =>
              //       val!.isEmpty ? 'Please enter some text' : null,
              //   decoration: new InputDecoration(
              //     labelText: 'Username',
              //     labelStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
              //     enabledBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(
              //         color: Style.Colors.letterMainColor.withOpacity(0.3),
              //       ),
              //     ),
              //     focusedBorder: UnderlineInputBorder(
              //       borderSide: BorderSide(
              //         color: Style.Colors.letterMainColor.withOpacity(0.8),
              //       ),
              //     ),
              //     prefixIcon: Icon(
              //       Icons.person,
              //       color: Colors.grey,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                controller: _emailController,
                cursorColor: Style.Colors.letterColorRed,
                cursorWidth: 1.5,
                validator: (val) =>
                    val!.isEmpty ? 'Please enter some text' : null,
                decoration: InputDecoration(
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
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                enableSuggestions: false,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                controller: _passwordController,
                cursorColor: Style.Colors.letterColorRed,
                cursorWidth: 1.5,
                validator: (input) => input!.length < 6
                    ? 'Password should be more than 6 characters'.tr
                    : null,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  labelText: 'Password (6-20 characters)'.tr,
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
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                enableSuggestions: false,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                controller: _confirmPasswordController,
                cursorColor: Style.Colors.letterColorRed,
                cursorWidth: 1.5,
                validator: (input) => input!.length < 6
                    ? 'Password should be more than 6 characters'.tr
                    : null,
                obscureText: hideConfirmPassword,
                decoration: InputDecoration(
                  labelText: 'Confirm password'.tr,
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
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30,
                    child: InkWell(
                      child: Align(
                        child: Text('Sing up'.tr,
                            style: StyleText.TextStyles.clicableRedText),
                        alignment: Alignment(0.0, 0.0),
                      ),
                      onTap: () {
                        if (_passwordController.text.trim() ==
                            _confirmPasswordController.text.trim()) {
                          BlocProvider.of<UserCheckCubit>(context,
                                  listen: false)
                              .emailRegister(_emailController.text.trim(),
                                  _passwordController.text.trim());
                          Navigator.of(context).pop();
                        } else {
                          Fluttertoast.showToast(
                              msg: "Passwords don't match".tr);
                        }
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
