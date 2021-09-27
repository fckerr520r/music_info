import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/presentation/screens/auth_welcome.dart';
import 'package:music_lyrics/presentation/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocBuilder<UserCheckCubit, UserCheckState>(
          builder: (context, state) {
            if (state is UserCheckInitial) {
              return Center(child: CircularProgressIndicator());
            } else if (state is UserCheckYep) {
              return MainScreen();
            } else if (state is UserCheckNop) {
              return WelcomeWidget();
            } else {
              return WelcomeWidget();
            }
          },
        ),
      );
}
