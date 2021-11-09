import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/logic/cubit/artist/artist_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/widgets/loading_widget.dart';
import 'package:music_lyrics/presentation/widgets/song_small_pic.dart';
import 'package:music_lyrics/service/models/artist.dart';
import 'package:music_lyrics/service/models/artist_social_data.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtistInfo extends StatelessWidget {
  const ArtistInfo({
    Key? key,
    required this.artistName,
    required this.artistId,
    required this.artistImageUrl,
  }) : super(key: key);

  final int artistId;
  final String artistImageUrl;
  final String artistName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArtistCubit>(
      create: (context) => GetIt.I.get<ArtistCubit>()..getAtristInfo(artistId),
      child: Scaffold(
        body: BlocBuilder<ArtistCubit, ArtistState>(
          builder: (context, state) {
            if (state is ArtistLoading) {
              return Scaffold(
                appBar: AppBar(),
                body: const LoadingWidget(),
              );
            }
            if (state is ArtistComplete) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    backgroundColor: style.Colors.backgroundColorLight,
                    pinned: true,
                    expandedHeight: 349,
                    flexibleSpace: FlexibleSpaceBar(
                      title: SizedBox(
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Positioned(
                              bottom: 40,
                              child: CircleAvatar(
                                radius: 53,
                                backgroundColor: style.Colors.backgroundColor,
                                child: Hero(
                                  tag: 'artist_avatar',
                                  child: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(artistImageUrl),
                                    radius: 50,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 13,
                              left: 13,
                              child: AutoSizeText(
                                artistName,
                                textAlign: TextAlign.center,
                                maxFontSize: 20,
                                minFontSize: 15,
                                maxLines: 2,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      centerTitle: true,
                      background: Container(
                        height: 330,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(state.artist.headerImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              style.Colors.backgroundColor.withOpacity(0),
                              style.Colors.backgroundColor.withOpacity(0.2),
                              style.Colors.backgroundColor.withOpacity(0.4),
                              style.Colors.backgroundColor.withOpacity(0.8),
                              style.Colors.backgroundColor.withOpacity(1),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index == 0) {
                          return AtristInfo(
                            artist: state.artist,
                            socials: state.socials,
                          );
                        }
                        final currentSong = state.listArtistSongs[index - 1];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: SongSmallPicture(
                            songId: currentSong.id,
                            artistName: currentSong.primaryArtist.name,
                            backgroundColor: style.Colors.backgroundColorLight,
                            // searchList[index].result.songArtPrimaryColor,
                            picUrl: currentSong.songArtImageUrl,
                            nameSong: currentSong.title,
                          ),
                        );
                      },
                      childCount: 1 + state.listArtistSongs.length,
                    ),
                  ),
                ],
              );
            }
            if (state is ArtistError) {
              return Scaffold(
                appBar: AppBar(),
                body: const Text('smth was wrong'), // TODO tr??
              );
            } else {
              return Scaffold(
                appBar: AppBar(),
                body: const LoadingWidget(),
              );
            }
          },
        ),
      ),
    );
  }
}

class AtristInfo extends StatelessWidget {
  const AtristInfo({
    Key? key,
    required this.artist,
    required this.socials,
  }) : super(key: key);
  final ArtistClass artist;
  final List<SocialData> socials;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          const SizedBox(height: 5),
          if (artist.alternateNames.isEmpty)
            const SizedBox(height: 5)
          else
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'AKA: ${artist.alternateNames.toString().replaceAll('[', '').replaceAll(']', '')}',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          SocialsWidget(socials: socials),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Divider(
              color: style.Colors.letterColorGreyLight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Popular songs'.tr.toUpperCase(),
                    style: const TextStyle(
                      color: style.Colors.letterMainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialsWidget extends StatelessWidget {
  const SocialsWidget({
    Key? key,
    required this.socials,
  }) : super(key: key);
  final List<SocialData> socials;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: socials.map((data) => _SocialRow(data: data)).toList(),
      ),
    );
  }
}

class _SocialRow extends StatelessWidget {
  const _SocialRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  final SocialData data;

  void redirecion(String url) {
    launch(url);
  }

  @override
  Widget build(BuildContext context) {
    if (data.login != '') {
      return Padding(
        padding: const EdgeInsets.only(top: 10, right: 15),
        child: GestureDetector(
          onTap: () {
            redirecion(data.url);
          },
          child: Column(
            children: [
              Icon(
                data.icon,
                size: 35,
                color: style.Colors.letterMainColor,
              ),
              const SizedBox(height: 3),
            ],
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
