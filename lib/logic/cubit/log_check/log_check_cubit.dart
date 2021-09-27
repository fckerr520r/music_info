import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'log_check_state.dart';

class UserCheckCubit extends Cubit<UserCheckState> {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  late final StreamSubscription<User?> authLisener;

  UserCheckCubit() : super(UserCheckInitial()) {
    authLisener = FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        if (user != null) {
          emit(UserCheckYep());
        } else {
          emit(UserCheckNop());
        }
      },
    );
  }

  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      _user = googleUser;

      final googleAuth = await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      UserCheckCubit();
    } catch (error) {}
  }

  Future<void> logout() async {
    try {
      await googleSignIn.disconnect();
    } catch (e) {}
    FirebaseAuth.instance.signOut();
  }

  Future emailAuth(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
          UserCheckCubit();
    } catch (error) {}
  }

  Future emailRegister(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      UserCheckCubit();
    } catch (error) {}
  }

  @override
  Future<void> close() {
    authLisener.cancel();
    return super.close();
  }
}
