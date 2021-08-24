import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/design/theme_text_style.dart' as StyleText;
import 'package:get/get.dart';

class SingUp extends StatefulWidget {
  SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _register() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmpassword = _confpasswordController.text.trim();
    if (password == confirmpassword) {
      try {
        final User? user = (await _auth.createUserWithEmailAndPassword(
                email: email, password: password))
            .user;
        setState(() {
          if (user != null) {
            Fluttertoast.showToast(msg: "User created".tr);
            Navigator.of(context).pop();
          }
        });
      } catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
    } else {
      Fluttertoast.showToast(msg: "Passwords don't match".tr);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sing up'.tr,
            style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Style.Colors.backgroundColor,
      ),
      body: Container(
        color: Style.Colors.backgroundColor,
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
              new TextFormField(
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
              SizedBox(
                height: 10,
              ),
              new TextFormField(
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
                decoration: new InputDecoration(
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
              new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                enableSuggestions: false,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                controller: _confpasswordController,
                cursorColor: Style.Colors.letterColorRed,
                cursorWidth: 1.5,
                validator: (input) => input!.length < 6
                    ? 'Password should be more than 6 characters'.tr
                    : null,
                obscureText: hideConfirmPassword,
                decoration: new InputDecoration(
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
                      onTap: () async {
                        _register();
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
