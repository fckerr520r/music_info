import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/logic/cubit/home/home_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/screens/artist_info.dart';
import 'package:music_lyrics/presentation/widgets/error_screen.dart';
import 'package:music_lyrics/presentation/widgets/loading_widget.dart';
import 'package:music_lyrics/presentation/widgets/song_big_pic.dart';
import 'package:music_lyrics/presentation/widgets/song_medium_pic.dart';
import 'package:music_lyrics/service/models/artist.dart';
import 'package:music_lyrics/service/models/song.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const LoadingWidget();
        }
        if (state is HomeCompleted) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                if (state.listTopSongs != null)
                  TrendSongs(
                    listTopSongs: state.listTopSongs!,
                  )
                else
                  const SizedBox(
                    height: 250,
                    child: LoadingWidget(),
                  ),
                const SizedBox(height: 10),
                if (state.listTopCounrtySong != null)
                  PopularSongInCountry(
                    listTopSongs: state.listTopCounrtySong!,
                  )
                else
                  const SizedBox(
                    height: 250,
                    child: LoadingWidget(),
                  ),
                const SizedBox(height: 10),
                if (state.listTopArtists != null)
                  PopularArtistInCountry(
                    listTopArtists: state.listTopArtists!,
                  )
                else
                  const SizedBox(
                    height: 250,
                    child: LoadingWidget(),
                  ),
              ],
            ),
          );
        }
        if (state is HomeError) {
          return const ErrorScreen();
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}

class PopularArtistInCountry extends StatelessWidget {
  const PopularArtistInCountry({Key? key, required this.listTopArtists})
      : super(key: key);
  final List<ArtistClass> listTopArtists;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Popular artist (country)'.tr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 150,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(width: 13);
            },
            padding: const EdgeInsets.symmetric(horizontal: 13),
            itemCount: listTopArtists.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 130,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArtistInfo(
                                artistId: listTopArtists[index].id,
                                artistImageUrl: listTopArtists[index].imageUrl,
                                artistName: listTopArtists[index].name),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Hero(
                            tag: 'artist_avatar${listTopArtists[index].id}',
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(listTopArtists[index].imageUrl),
                              radius: 60,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            listTopArtists[index].name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class TrendSongs extends StatelessWidget {
  const TrendSongs({Key? key, required this.listTopSongs}) : super(key: key);
  final List<Song> listTopSongs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Trending now'.tr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(width: 13);
            },
            padding: const EdgeInsets.symmetric(horizontal: 13),
            itemCount: listTopSongs.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SongBigPicture(
                songId: listTopSongs[index].id,
                artistName: listTopSongs[index].primaryArtist!.name,
                backgroundColor: style.Colors.backgroundColorLight,
                // listTopSongs[index].songArtPrimaryColor,
                picUrl: listTopSongs[index].headerImageUrl,
                nameSong: listTopSongs[index].title,
              );
            },
          ),
        ),
      ],
    );
  }
}

class PopularSongInCountry extends StatelessWidget {
  const PopularSongInCountry({Key? key, required this.listTopSongs})
      : super(key: key);
  final List<Song> listTopSongs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Popular songs (country)'.tr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 200,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(width: 13);
            },
            padding: const EdgeInsets.symmetric(horizontal: 13),
            itemCount: listTopSongs.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SongMediumPicture(
                songId: listTopSongs[index].id,
                artistName: listTopSongs[index].primaryArtist!.name,
                backgroundColor: style.Colors.backgroundColorLight,
                // listTopSongs[index].songArtPrimaryColor,
                picUrl: listTopSongs[index].headerImageUrl,
                nameSong: listTopSongs[index].title,
              );
            },
          ),
        ),
      ],
    );
  }
}
