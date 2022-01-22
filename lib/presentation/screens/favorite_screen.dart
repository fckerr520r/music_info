import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/logic/cubit/favorite/favorite_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/screens/song_info.dart';
import 'package:music_lyrics/presentation/widgets/drawer.dart';
import 'package:ui/ui.dart';

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
        return state.map(
          loaded: (loaded) => Container(
            color: style.Colors.backgroundColor,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: ListView.builder(
                itemCount: loaded.favoriteList.length,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemBuilder: (context, index) {
                  return SongSmallPicture(
                    songId: loaded.favoriteList[index].id,
                    artistName:
                        Text(loaded.favoriteList[index].primaryArtist.name),
                    pictureUrl: loaded.favoriteList[index].headerImageUrl,
                    nameSong: Text(loaded.favoriteList[index].title),
                    widget: SongInfo(songId: loaded.favoriteList[index].id),
                  );
                },
              ),
            ),
          ),
          loading: (loading) => const Center(child: LoadingWidget()),
          error: (error) => Center(
            child: InfoScreenWidget(
              child: Text('Something went wrong'.tr),
            ),
          ),
          noFound: (noFound) => Center(
            child: InfoScreenWidget(
              child: Text('The list is empty'.tr),
            ),
          ),
        );
      },
    );
  }
}
