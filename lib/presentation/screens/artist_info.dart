import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/logic/cubit/artist/artist_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/screens/song_info.dart';
import 'package:music_lyrics/service/models/genius_models/artist_model/artist_model.dart';
import 'package:music_lyrics/service/models/genius_models/artist_social_data.dart';
import 'package:ui/ui.dart';
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
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<ArtistCubit, ArtistState>(
            builder: (context, state) {
              return state.map(
                initial: (initial) {
                  return Scaffold(
                    appBar: AppBar(),
                    body: const Center(child: LoadingWidget()),
                  );
                },
                loading: (loading) {
                  return Scaffold(
                    appBar: AppBar(),
                    body: const Center(child: LoadingWidget()),
                  );
                },
                loaded: (loaded) {
                  return CustomScrollView(
                    slivers: <Widget>[
                      SliverPersistentHeader(
                        delegate: CustomAppBar(
                          artistImageUrl: artistImageUrl,
                          artistName: artistName,
                          artistHeaderImageUrl: loaded.artist.headerImageUrl,
                        ),
                        pinned: true,
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            if (index == 0) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
                                child: _ArtistInfoLayaut(
                                  artist: loaded.artist,
                                  socials: loaded.socials,
                                ),
                              );
                            }
                            final currentSong =
                                loaded.listArtistSongs[index - 1];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13),
                              child: SongSmallPicture(
                                songId: currentSong.id,
                                artistName:
                                    Text(currentSong.primaryArtist.name),
                                pictureUrl: currentSong.songArtImageUrl,
                                nameSong: Text(currentSong.title),
                                widget: SongInfo(songId: currentSong.id),
                              ),
                            );
                          },
                          childCount: 1 + loaded.listArtistSongs.length,
                        ),
                      ),
                    ],
                  );
                },
                error: (error) => InfoScreenWidget(
                  child: Text(
                    'Something went wrong'.tr,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ArtistInfoLayaut extends StatelessWidget {
  const _ArtistInfoLayaut({
    Key? key,
    required this.artist,
    required this.socials,
  }) : super(key: key);
  
  final ArtistFullInfo artist;
  final List<SocialData> socials;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (artist.alternateNames.isEmpty)
          const SizedBox(height: 5)
        else
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'AKA: ${artist.alternateNames[0]}',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        Row(
          children: socials
              .map((data) => data.login.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: 10, right: 15),
                      child: SocialsWidget(
                        socialIcon: Icon(data.icon),
                        onTap: () => launch(data.url),
                      ),
                    )
                  : const SizedBox())
              .toList(),
        ),
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
    );
  }
}
