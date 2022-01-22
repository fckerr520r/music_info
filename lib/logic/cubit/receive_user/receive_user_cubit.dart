import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'receive_user_state.dart';
part 'receive_user_cubit.freezed.dart';

class ReceiveUserCubit extends Cubit<ReceiveUserState> {
  ReceiveUserCubit() : super(const ReceiveUserState.loading()) {
    receiveUserInfo();
  }

  void receiveUserInfo() {
    try {
      emit(ReceiveUserState.loaded(FirebaseAuth.instance.currentUser));
    } on Exception {
      emit(const ReceiveUserState.error());
    }
  }
}
