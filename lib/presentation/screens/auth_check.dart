import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_lyrics/logic/cubit/log_check/log_check_cubit.dart';
import 'package:music_lyrics/presentation/screens/auth_welcome.dart';
import 'package:music_lyrics/presentation/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserCheckCubit, UserCheckState>(
        builder: (context, state) {
          return state.map(
            loading: (loading) =>
                const Center(child: CircularProgressIndicator()),
            logged: (logged) => const MainScreen(),
            notLogged: (notLogged) => const WelcomeWidget(),
          );
        },
      ),
    );
  }
}
