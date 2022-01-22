import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:music_lyrics/logic/cubit/favorite/favorite_cubit.dart';
import 'package:music_lyrics/logic/cubit/favorite_change/favorite_change_cubit.dart';
import 'package:music_lyrics/logic/cubit/song/song_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/screens/artist_info.dart';
import 'package:ui/ui.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SongInfo extends StatefulWidget {
  const SongInfo({Key? key, required this.songId}) : super(key: key);
  final int songId;
  @override
  _SongInfoState createState() => _SongInfoState();
}

class _SongInfoState extends State<SongInfo> {
  String code = '';
  late YoutubePlayerController _ytubeController = YoutubePlayerController(
    initialVideoId: code,
    flags: const YoutubePlayerFlags(
      enableCaption: false,
      autoPlay: false,
    ),
  );

  void video(String code) {
    WidgetsBinding.instance!.addPostFrameCallback(
      (_) => setState(
        () {
          _ytubeController = YoutubePlayerController(
            initialVideoId: code,
            flags: const YoutubePlayerFlags(
              enableCaption: false,
              autoPlay: false,
            ),
          );
          print(code);
        },
      ),
    );
  }

  @override
  void dispose() {
    _ytubeController.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    _ytubeController.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<SongCubit>()..getSongInfo(widget.songId),
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _ytubeController,
        ),
        builder: (context, player) {
          return Scaffold(
            appBar: AppBar(
              title: AppBarTitleWithIcon(
                icon: BlocProvider(
                  create: (context) => GetIt.I.get<FavoriteChangeCubit>()
                    ..checkFavorite(widget.songId),
                  child: BlocConsumer<FavoriteChangeCubit, FavoriteChangeState>(
                    listener: (context, state) {
                      if (state is FavoriteChangeAddState) {
                        Fluttertoast.showToast(
                          msg: 'Song added'.tr,
                          backgroundColor: style.Colors.letterColorGreyLight,
                          textColor: Colors.white,
                        );
                      }
                      if (state is FavoriteChangeRemoveState) {
                        Fluttertoast.showToast(
                          msg: 'Song deleted'.tr,
                          backgroundColor: style.Colors.letterColorGreyLight,
                          textColor: Colors.white,
                        );
                      }
                      if (state is FavoriteChangeErrorState) {
                        Fluttertoast.showToast(
                          msg: 'Something went wrong'.tr,
                          backgroundColor: style.Colors.letterColorGreyLight,
                          textColor: Colors.white,
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is FavoriteChangeLoadedState &&
                          state.isFavorite == true) {
                        return InkWell(
                          child: const Icon(
                            Icons.bookmark_added,
                            color: style.Colors.letterColorRed,
                          ),
                          onTap: () {
                            BlocProvider.of<FavoriteChangeCubit>(context,
                                    listen: false)
                                .removeFavorite(widget.songId);
                            BlocProvider.of<FavoriteCubit>(context,
                                    listen: false)
                                .receiveFavoriteSong();
                          },
                        );
                      }
                      if (state is FavoriteChangeLoadedState &&
                          state.isFavorite == false) {
                        return InkWell(
                          child: const Icon(
                            Icons.bookmark_add,
                          ),
                          onTap: () {
                            BlocProvider.of<FavoriteChangeCubit>(context,
                                    listen: false)
                                .addFavorite(widget.songId);
                            BlocProvider.of<FavoriteCubit>(context,
                                    listen: false)
                                .receiveFavoriteSong();
                          },
                        );
                      } else {
                        return const Icon(Icons.error);
                      }
                    },
                  ),
                ),
              ),
            ),
            body: BlocConsumer<SongCubit, SongState>(
              listener: (context, state) {
                if (state is SongLoadedState) {
                  if (code.isNotEmpty) {
                    code = YoutubePlayer.convertUrlToId(state.videoUrl)!;
                    video(code);
                  }
                  // _ytubeController = YoutubePlayerController(
                  //   initialVideoId:
                  //       YoutubePlayer.convertUrlToId(state.videoUrl)!
                  //           .toString(),
                  //   flags: const YoutubePlayerFlags(
                  //     enableCaption: false,
                  //     autoPlay: false,
                  //   ),
                  // );
                  // _ytubeController.load(YoutubePlayer.convertUrlToId(state.videoUrl)!.toString());
                  // _ytubeController.reload;
                  // setState(() {});
                  // print(_ytubeController.initialVideoId);
                }
              },
              builder: (context, state) {
                return state.map(
                  loading: (loading) => const Center(child: LoadingWidget()),
                  error: (error) => InfoScreenWidget(
                    child: Text(
                      'Something went wrong'.tr,
                    ),
                  ),
                  loaded: (loaded) => SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 400,
                          child: MainPicture(
                            songArtImageUrl: loaded.song.songArtImageUrl,
                            title: loaded.song.title,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                                left: 13,
                                right: 13,
                              ),
                              child: SizedBox(
                                height: 125,
                                child: SongOwnerInfo(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ArtistInfo(
                                          artistId:
                                              loaded.song.primaryArtist.id,
                                          artistImageUrl: loaded
                                              .song.primaryArtist.imageUrl,
                                          artistName:
                                              loaded.song.primaryArtist.name,
                                        ),
                                      ),
                                    );
                                  },
                                  primaryArtistImage: NetworkImage(
                                      loaded.song.primaryArtist.imageUrl),
                                  primaryArtistName: AutoSizeText(
                                    loaded.song.primaryArtist.name,
                                    maxFontSize: 20,
                                    minFontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                            if (loaded.song.lyric.isEmpty)
                              const SizedBox()
                            else
                              Container(
                                color: Theme.of(context)
                                    .appBarTheme
                                    .backgroundColor,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 13,
                                  vertical: 8,
                                ),
                                child: TextLyrics(
                                  lyrics: loaded.song.lyric,
                                  callback: () => launch(loaded.song.url),
                                ),
                              ),
                            const SizedBox(height: 10),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              color:
                                  Theme.of(context).appBarTheme.backgroundColor,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 13,
                                vertical: 8,
                              ),
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 5,
                                children: [
                                  if (loaded.featuredArtists.toString() != '')
                                    SongLinesInfo(
                                      line: Text('Featuring'.tr),
                                      mainInfo: Text(
                                        loaded.featuredArtists.toString(),
                                      ),
                                    ),
                                  if (loaded.song.album != null)
                                    SongLinesInfo(
                                      line: Text('Album'.tr),
                                      mainInfo: Text(
                                        loaded.song.album!.name.toString(),
                                      ),
                                    ),
                                  if (loaded.writeredArtists.toString() != '')
                                    SongLinesInfo(
                                      line: Text('Writer Artists'.tr),
                                      mainInfo: Text(
                                        loaded.writeredArtists.toString(),
                                      ),
                                    ),
                                  if (loaded.producerArtists.toString() != '')
                                    SongLinesInfo(
                                      line: Text('Producer Artists'.tr),
                                      mainInfo: Text(
                                        loaded.producerArtists.toString(),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            if (loaded.videoUrl.isEmpty)
                              const SizedBox()
                            else
                              VideoPlayer(
                                player: player,
                                text: Text('Official video'.tr),
                              ),
                            if (loaded.song.releaseDate != null)
                              SongDividerData(
                                releaseDate: Text('Release date'.tr +
                                    DateFormat.yMMMMd()
                                        .format(loaded.song.releaseDate!)),
                              )
                            else
                              const SizedBox(),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
