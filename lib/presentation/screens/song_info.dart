import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/logic/cubit/song/song_cubit.dart';
import 'package:music_lyrics/presentation/widgets/loading_widget.dart';
import 'package:music_lyrics/presentation/widgets/song_info/app_bar.dart';
import 'package:music_lyrics/presentation/widgets/song_info/main_picture.dart';
import 'package:music_lyrics/presentation/widgets/song_info/song_divider_data.dart';
import 'package:music_lyrics/presentation/widgets/song_info/song_lines_info.dart';
import 'package:music_lyrics/presentation/widgets/song_info/song_owner_info.dart';
import 'package:music_lyrics/presentation/widgets/song_info/text_lyric.dart';
import 'package:music_lyrics/presentation/widgets/song_info/video_block.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SongInfo extends StatefulWidget {
  const SongInfo({Key? key, required this.songId}) : super(key: key);
  final int songId;
  @override
  _SongInfoState createState() => _SongInfoState();
}

class _SongInfoState extends State<SongInfo> {
  final YoutubePlayerController _ytubeController = YoutubePlayerController(
    initialVideoId: '',
    flags: const YoutubePlayerFlags(
      enableCaption: false,
      autoPlay: false,
    ),
  );

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
              title: SongAppBar(
                songId: widget.songId,
              ),
            ),
            body: BlocConsumer<SongCubit, SongState>(
              listener: (context, state) {
                if (state is SongComplete) {
                  setState(() {
                    final id = YoutubePlayer.convertUrlToId(state.videoUrl)!;
                    print(id);
                    _ytubeController
                        .load(YoutubePlayer.convertUrlToId(state.videoUrl)!);
                    print('${_ytubeController.initialVideoId} xd');
                  });
                }
              },
              builder: (context, state) {
                if (state is SongComplete) {
                  return SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 400,
                          child: MainPic(
                            songArtImageUrl: state.song.songArtImageUrl,
                            title: state.song.title,
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10, left: 13, right: 13),
                              child: SizedBox(
                                height: 125,
                                child: SongOwnerInfo(song: state.song),
                              ),
                            ),
                            if (state.song.lyric == '')
                              const SizedBox.shrink()
                            else
                              Container(
                                color: Theme.of(context)
                                    .appBarTheme
                                    .backgroundColor,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 13),
                                child: TextLyric(
                                  lyric: state.song.lyric,
                                ),
                              ),
                            const SizedBox(height: 10),
                            Container(
                              color:
                                  Theme.of(context).appBarTheme.backgroundColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 8),
                              child: Column(
                                children: [
                                  SongLinesInfo(
                                    line: 'Featuring'.tr,
                                    mainInfo: state.featuredArtists.toString(),
                                  ),
                                  if (state.song.album != null)
                                    SongLinesInfo(
                                      line: 'Album'.tr,
                                      mainInfo:
                                          state.song.album!.name.toString(),
                                    )
                                  else
                                    const SizedBox.shrink(),
                                  SongLinesInfo(
                                    line: 'Writer Artists'.tr,
                                    mainInfo: state.writeredArtists.toString(),
                                  ),
                                  SongLinesInfo(
                                    line: 'Producer Artists'.tr,
                                    mainInfo: state.producerArtists.toString(),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            if (state.videoUrl == '')
                              const SizedBox.shrink()
                            else
                              VideoBlock(
                                player: player,
                              ),
                            if (state.song.releaseDate != null)
                              SongDividerData(
                                releaseDate: state.song.releaseDate!,
                              )
                            else
                              const SizedBox.shrink(),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  return const LoadingWidget();
                }
              },
            ),
          );
        },
      ),
    );
  }
}
