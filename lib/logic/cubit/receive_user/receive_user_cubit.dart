import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'receive_user_state.dart';

class ReceiveUserCubit extends Cubit<ReceiveUserState> {
  ReceiveUserCubit() : super(ReceiveUserInitial()){
    receiveUserInfo();
  }

  void receiveUserInfo(){
     emit(ReceiveUserComplete(FirebaseAuth.instance.currentUser));
  }
}
