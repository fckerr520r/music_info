import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:music_lyrics/service/models/artist.dart';
import 'package:music_lyrics/service/models/artist_track.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;
import 'package:music_lyrics/service/repositories/genius_repository.dart';
import 'package:music_lyrics/service/models/artist_social_data.dart';
import 'package:music_lyrics/presentation/widgets/song_small_pic.dart';
import 'package:music_lyrics/presentation/widgets/loading_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class ArtistInfo extends StatefulWidget {
  ArtistInfo({
    Key? key,
    required this.artistName,
    required this.artistId,
    required this.artistImageUrl,
  }) : super(key: key);

  final int artistId;
  final String artistImageUrl;
  final String artistName;

  @override
  _ArtistInfoState createState() =>
      _ArtistInfoState(artistId, artistImageUrl, artistName);
}

class _ArtistInfoState extends State<ArtistInfo> {
  final int artistId;
  final String artistImageUrl;
  final String artistName;
  _ArtistInfoState(this.artistId, this.artistImageUrl, this.artistName);
  late final List<SongA> listArtistSongs;

  late List<SocialData> socials = [
    SocialData(
        icon: EvaIcons.facebook,
        login: artist.facebookName,
        url: 'https://www.facebook.com/${artist.facebookName}'),
    SocialData(
        icon: Icons.photo_camera_outlined,
        login: artist.instagramName,
        url: 'https://www.instagram.com/${artist.instagramName}/'),
    SocialData(
        icon: EvaIcons.twitter,
        login: artist.twitterName,
        url: 'https://twitter.com/${artist.twitterName}'),
  ];

  late final ArtistClass artist;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getAtristInfo();
  }

  Future<void> getAtristInfo() async {
    artist = await GeniusRepository().getArtist(artistId);
    listArtistSongs = await GeniusRepository().getArtistTrack(artistId);
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Style.Colors.backgroundColorLight,
            pinned: true,
            snap: false,
            floating: false,
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
                        backgroundColor: Style.Colors.backgroundColor,
                        child: Hero(
                          tag: 'artist_avatar$artistId',
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(artistImageUrl),
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
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              background: _isLoading
                  ? SizedBox.square()
                  : Container(
                      height: 330,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(artist.headerImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Style.Colors.backgroundColor.withOpacity(0.0),
                            Style.Colors.backgroundColor.withOpacity(0.2),
                            Style.Colors.backgroundColor.withOpacity(0.4),
                            Style.Colors.backgroundColor.withOpacity(0.8),
                            Style.Colors.backgroundColor.withOpacity(1),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
          _isLoading
              ? SliverList(
                  delegate: SliverChildListDelegate([
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 400,
                    child: LoadingWidget(),
                  ),
                ]))
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index == 0) {
                        return AtristInfo(
                          artist: artist,
                          socials: socials,
                        );
                      }
                      SongA currentSong = listArtistSongs[index - 1];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: SongSmallPicture(
                          songId: currentSong.id,
                          artistName: currentSong.primaryArtist.name,
                          backgroundColor: Style.Colors.backgroundColorLight,
                          // searchList[index].result.songArtPrimaryColor,
                          picUrl: currentSong.songArtImageUrl,
                          nameSong: currentSong.title,
                        ),
                      );
                    },
                    childCount: 1 + listArtistSongs.length,
                  ),
                ),
        ],
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
          SizedBox(height: 5),
          artist.alternateNames.length == 0
              ? SizedBox(height: 5)
              : Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'AKA: ' +
                        artist.alternateNames
                            .toString()
                            .replaceAll('[', '')
                            .replaceAll(']', ''),
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          SocialsWidget(socials: socials),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Divider(
              color: Style.Colors.letterColorGreyLight,
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
                    style: TextStyle(
                      color: Style.Colors.letterMainColor,
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
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
                color: Style.Colors.letterMainColor,
              ),
              SizedBox(height: 3),
            ],
          ),
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
