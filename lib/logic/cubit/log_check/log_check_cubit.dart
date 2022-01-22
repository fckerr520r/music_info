import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'log_check_state.dart';
part 'log_check_cubit.freezed.dart';

class UserCheckCubit extends Cubit<UserCheckState> {
  UserCheckCubit({
    required this.googleAuthProvider,
    required this.googleSignIn,
    required this.firebaseAuth,
  }) : super(const UserCheckState.loading()) {
    authLisener = firebaseAuth.authStateChanges().listen(
      (user) {
        if (user != null) {
          emit(const UserCheckState.logged());
        } else {
          emit(const UserCheckState.notLogged());
        }
      },
    );
  }

  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final GoogleAuthProvider googleAuthProvider;
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  late final StreamSubscription<User?> authLisener;

  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      _user = googleUser;

      final googleAuth = await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await firebaseAuth.signInWithCredential(credential);
    } on Exception catch (error) {
      log(error.toString());
    }
  }

  Future<void> logout() async {
    try {
      await googleSignIn.disconnect();
    } on Exception catch (error) {
      log(error.toString());
    }
    await close();
    await firebaseAuth.signOut();
  }

  Future emailAuth(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on Exception catch (error) {
      log(error.toString());
    }
  }

  Future emailRegister(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on Exception catch (error) {
      log(error.toString());
    }
  }

  @override
  Future<void> close() {
    authLisener.cancel();
    return super.close();
  }
}
