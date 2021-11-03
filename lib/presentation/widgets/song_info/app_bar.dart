import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/logic/cubit/favorite/favorite_cubit.dart';
import 'package:music_lyrics/logic/cubit/favorite_change/favorite_change_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;

class SongAppBar extends StatelessWidget {
  const SongAppBar({Key? key, required this.songId}) : super(key: key);

  final songId;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            // song.title,
            '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        BlocProvider(
          create: (context) =>
              GetIt.I.get<FavoriteChangeCubit>()..checkFavorite(songId),
          child: BlocConsumer<FavoriteChangeCubit, FavoriteChangeState>(
            listener: (context, state) {
              if (state is FavoriteChangeAdd) {
                Fluttertoast.showToast(
                  msg: 'Song added'.tr,
                  backgroundColor: Style.Colors.letterColorGreyLight,
                  textColor: Colors.white,
                );
              }
              if (state is FavoriteChangeRemove) {
                Fluttertoast.showToast(
                  msg: 'Song deleted'.tr,
                  backgroundColor: Style.Colors.letterColorGreyLight,
                  textColor: Colors.white,
                );
              }
              if (state is FavoriteChangeError) {
                Fluttertoast.showToast(
                  msg: 'Something went wrong'.tr,
                  backgroundColor: Style.Colors.letterColorGreyLight,
                  textColor: Colors.white,
                );
              }
            },
            builder: (context, state) {
              if (state is FavoriteChangeComplete && state.isFavorite == true)
                return InkWell(
                  child: Icon(
                    Icons.bookmark_added,
                    color: Style.Colors.letterColorRed,
                  ),
                  onTap: () {
                    BlocProvider.of<FavoriteChangeCubit>(context, listen: false)
                        .removeFavorite(songId);
                    BlocProvider.of<FavoriteCubit>(context, listen: false)
                        .receiveFavoriteSong();
                  },
                );
              if (state is FavoriteChangeComplete && state.isFavorite == false)
                return InkWell(
                  child: Icon(
                    Icons.bookmark_add,
                  ),
                  onTap: () {
                    BlocProvider.of<FavoriteChangeCubit>(context, listen: false)
                        .addFavorite(songId);
                    BlocProvider.of<FavoriteCubit>(context, listen: false)
                        .receiveFavoriteSong();
                  },
                );
              else
                return Icon(Icons.error);
            },
          ),
        ),
      ],
    );
  }
}
