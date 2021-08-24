import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:music_lyrics/api/genius_api/jsons/artist.dart';
import 'package:music_lyrics/api/genius_api/jsons/artist_track.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/api/genius_api/genius_repository.dart';
import 'package:music_lyrics/screens/basic/artist_info_widgets/artist_info_data.dart';
import 'package:music_lyrics/screens/basic/song_info.dart';
import 'package:music_lyrics/special_widget/loading_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class ArtistInfo extends StatefulWidget {
  ArtistInfo({Key? key, required this.artistId}) : super(key: key);
  final int artistId;
  @override
  _ArtistInfoState createState() => _ArtistInfoState(artistId);
}

class _ArtistInfoState extends State<ArtistInfo> {
  late final int artistId;
  _ArtistInfoState(this.artistId);
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
      appBar: AppBar(
        backgroundColor: Style.Colors.backgroundColorLight,
      ),
      body: _isLoading
          ? LoadingWidget()
          : Container(
              color: Style.Colors.backgroundColor,
              child: Column(
                children: [
                  Images(artist: artist),
                  ListTileTheme(
                    tileColor: Style.Colors.backgroundColor,
                    child: Expanded(
                      child: ArtistInfoWidget(
                        listArtistSongs: listArtistSongs,
                        artist: artist,
                        socials: socials,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class ArtistInfoWidget extends StatelessWidget {
  const ArtistInfoWidget(
      {Key? key,
      required this.listArtistSongs,
      required this.artist,
      required this.socials})
      : super(key: key);
  final List<SongA> listArtistSongs;
  final ArtistClass artist;
  final List<SocialData> socials;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1 + listArtistSongs.length,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return _atristInfo();
        }
        SongA currentSong = listArtistSongs[index - 1];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SongInfo(songId: currentSong.id),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            child: Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 70,
                  child: Row(
                    children: [
                      Container(
                        child: Image.network(
                          currentSong.songArtImageUrl,
                          width: 100,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Style.HexColor(
                                  currentSong.songArtPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 13),
                            Text(
                              currentSong.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 9),
                            Text(currentSong.primaryArtist.name.toString(),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _atristInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 5),
            width: double.infinity,
            child: Text(
              artist.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
  
  void redirecion(String url)  {
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

class Images extends StatelessWidget {
  const Images({
    Key? key,
    required this.artist,
  }) : super(key: key);

  final ArtistClass artist;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              color: Style.Colors.backgroundColorLight,
              image: DecorationImage(
                image: NetworkImage(artist.headerImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 16,
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Style.Colors.backgroundColor,
              child: CircleAvatar(
                radius: 77,
                backgroundColor: Style.Colors.backgroundColorLight,
                backgroundImage: NetworkImage(artist.imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
