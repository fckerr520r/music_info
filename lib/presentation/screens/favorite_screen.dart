import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/logic/cubit/favorite/favorite_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/widgets/drawer.dart';
import 'package:music_lyrics/presentation/widgets/loading_widget.dart';
import 'package:music_lyrics/presentation/widgets/song_small_pic.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMain(),
      appBar: AppBar(
        backgroundColor: style.Colors.backgroundColorLight,
        title: Text('Favorite'.tr),
      ),
      body: const FavoriteScreen(),
    );
  }
}

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        if (state is FavoriteLoading) {
          return const LoadingWidget();
        }
        if (state is FavoriteNoFind) {
          return Center(
            child: Text(
              'The list is empty'.tr,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          );
        }
        if (state is FavoriteError) {
          return const Text('error');
        }
        if (state is FavoriteCompleted) {
          return Container(
            color: style.Colors.backgroundColor,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: ListView.builder(
                itemCount: state.favoriteList.length,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemBuilder: (context, index) {
                  return SongSmallPicture(
                    songId: state.favoriteList[index].id,
                    artistName: state.favoriteList[index].primaryArtist!.name,
                    backgroundColor: style.Colors.backgroundColorLight,
                    //     state.favoriteList[index].songArtPrimaryColor,
                    picUrl: state.favoriteList[index].headerImageUrl,
                    nameSong: state.favoriteList[index].title,
                  );
                },
              ),
            ),
          );
        }
        return const LoadingWidget();
      },
    );
  }
}
