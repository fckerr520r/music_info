import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/logic/cubit/artist/artist_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/screens/song_info.dart';
import 'package:music_lyrics/presentation/widgets/artist_info/custom_app_bar.dart';
import 'package:music_lyrics/presentation/widgets/artist_info/socials_widget.dart';
import 'package:music_lyrics/service/models/genius_models/artist_model/artist_model.dart';
import 'package:music_lyrics/service/models/genius_models/artist_social_data.dart';
import 'package:ui/ui.dart';

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
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<ArtistCubit, ArtistState>(
            builder: (context, state) {
              return state.when(
                initial: () => Scaffold(
                  appBar: AppBar(),
                  body: const LoadingWidget(),
                ),
                loading: () => Scaffold(
                  appBar: AppBar(),
                  body: const LoadingWidget(),
                ),
                loaded: (listArtistSongs, artist, socials) => CustomScrollView(
                  slivers: <Widget>[
                    SliverPersistentHeader(
                      delegate: CustomAppBar(
                        artistImageUrl: artistImageUrl,
                        artistName: artistName,
                        artistHeaderImageUrl: artist.headerImageUrl,
                      ),
                      // floating: true,
                      pinned: true,
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index == 0) {
                            return AtristInfo(
                              artist: artist,
                              socials: socials,
                            );
                          }
                          final currentSong = listArtistSongs[index - 1];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 13),
                            child: SongSmallPicture(
                                songId: currentSong.id,
                                artistName: currentSong.primaryArtist.name,
                                picUrl: currentSong.songArtImageUrl,
                                nameSong: currentSong.title,
                                widget: SongInfo(songId: currentSong.id)),
                          );
                        },
                        childCount: 1 + listArtistSongs.length,
                      ),
                    ),
                  ],
                ),
                error: () => Scaffold(
                  appBar: AppBar(),
                  body: const Text('smth was wrong'),
                ),
              );
            },
          ),
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
  final ArtistFullInfo artist;
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
