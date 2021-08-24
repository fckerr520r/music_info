// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookSignInProvider extends ChangeNotifier {
  Future facebookLogin() async {
    try {
      //   final AccessToken result = await FacebookAuth.instance.login();

      // final FacebookAuthCredential facebookAuthCredential =
      //     FacebookAuthProvider.credential(result.token);

      // return await FirebaseAuth.instance
      //     .signInWithCredential(facebookAuthCredential);
    } catch (error) {
      Fluttertoast.showToast(msg: error.toString());
    }
  }
}
