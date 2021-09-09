import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:music_lyrics/api/genius_api/genius_repository.dart';
import 'package:music_lyrics/api/genius_api/jsons/song.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/favorite/favorite_data.dart';
import 'package:music_lyrics/screens/basic/artist_info_widgets/artist_info_main_screen.dart';
import 'package:music_lyrics/special_widget/loading_widget.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:get/get.dart';

class SongInfo extends StatefulWidget {
  SongInfo({Key? key, required this.songId}) : super(key: key);
  final int songId;
  @override
  _SongInfoState createState() => _SongInfoState(songId);
}

class _SongInfoState extends State<SongInfo> {
  late final int songId;
  _SongInfoState(this.songId);
  String _featuredArtists = '';
  String _writeredArtists = '';
  String _producerArtists = '';

  String code = YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=dQw4w9WgXcQ')
      .toString();
  late YoutubePlayerController _ytubeController = YoutubePlayerController(
    initialVideoId: code,
    flags: YoutubePlayerFlags(
      enableCaption: false,
      isLive: false,
      autoPlay: true,
    ),
  );

  late final Song song;
  bool _isLoading = true;
  bool checkFavorite = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  _addFavorite() async {
    await FavoriteSongClass().addFavoriteSongs(songId);
    setState(() {
      checkFavorite = true;
      Fluttertoast.showToast(
        msg: 'Song added'.tr,
        backgroundColor: Style.Colors.letterColorGreyLight,
        textColor: Colors.white,
      );
    });
  }

  _deleteFavorite() async {
    await FavoriteSongClass().deleteFavoriteSongs(songId);
    setState(() {
      checkFavorite = false;
      Fluttertoast.showToast(
        msg: 'Song deleted'.tr,
        backgroundColor: Style.Colors.letterColorGreyLight,
        textColor: Colors.white,
      );
    });
  }

  Future<void> getData() async {
    song = await GeniusRepository().getSong(songId);

    if (await FavoriteSongClass().checkFavoriteSongs(song.id)) {
      checkFavorite = true;
    }

    for (var i = 0; i < song.media.length; i++) {
      if (song.media[i].provider == 'youtube') {
        String url = song.media[i].url;
        if (url.contains('https') == false) {
          url = url.replaceFirst(RegExp(r".{4}"), 'https');
        }
        String code = YoutubePlayer.convertUrlToId(url).toString();
        _ytubeController = YoutubePlayerController(
          initialVideoId: code,
          flags: YoutubePlayerFlags(
            enableCaption: false,
            isLive: false,
            autoPlay: false,
          ),
        );
      }
    }

    if (song.featuredArtists!.length != 0) {
      List<String> _featureArtists = [];
      for (var x = 0; x < song.featuredArtists!.length; x++) {
        _featureArtists.add(song.featuredArtists![x].name);
      }
      _featuredArtists =
          _featureArtists.toString().replaceAll('[', '').replaceAll(']', '');
    }

    if (song.writerArtists!.length != 0) {
      List<String> _writerArtists = [];
      for (var x = 0; x < song.writerArtists!.length; x++) {
        _writerArtists.add(song.writerArtists![x].name);
      }
      _writeredArtists =
          _writerArtists.toString().replaceAll('[', '').replaceAll(']', '');
    }

    if (song.producerArtists!.length != 0) {
      List<String> _prodArtists = [];
      for (var x = 0; x < song.producerArtists!.length; x++) {
        _prodArtists.add(song.producerArtists![x].name);
      }
      _producerArtists =
          _prodArtists.toString().replaceAll('[', '').replaceAll(']', '');
    }

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
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
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _ytubeController,
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: _isLoading
                ? Text('')
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          song.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      InkWell(
                        child: checkFavorite
                            ? Icon(
                                Icons.bookmark_added,
                                color: Style.Colors.letterColorRed,
                              )
                            : Icon(
                                Icons.bookmark_add,
                              ),
                        onTap: checkFavorite ? _deleteFavorite : _addFavorite,
                      ),
                    ],
                  ),
          ),
          body: _isLoading
              ? LoadingWidget()
              : SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 400,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Style.Colors.backgroundColorLight,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(song.songArtImageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              foregroundDecoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Style.Colors.backgroundColor
                                        .withOpacity(0.0),
                                    Style.Colors.backgroundColor
                                        .withOpacity(0.5),
                                    Style.Colors.backgroundColor.withOpacity(1),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 330,
                              left: 15,
                              right: 15,
                              child: AutoSizeText(
                                song.title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxFontSize: 30,
                                minFontSize: 27,
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: SizedBox(
                                height: 125,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ArtistInfo(
                                          artistId: song.primaryArtist.id,
                                          artistImageUrl:
                                              song.primaryArtist.imageUrl,
                                          artistName: song.primaryArtist.name,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 0,
                                        top: 5,
                                        child: Container(
                                          child: CircleAvatar(
                                            radius: 60,
                                            backgroundColor:
                                                Style.Colors.backgroundColor,
                                            child: CircleAvatar(
                                              radius: 57,
                                              backgroundColor: Style
                                                  .Colors.backgroundColorLight,
                                              backgroundImage: NetworkImage(
                                                  song.primaryArtist.imageUrl),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 50,
                                        left: 133,
                                        right: 13,
                                        child: AutoSizeText(
                                          song.primaryArtist.name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxFontSize: 20,
                                          minFontSize: 17,
                                          textAlign: TextAlign.start,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            _featuredArtists != ''
                                ? Container(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 1),
                                          child: Text(
                                            'Featuring'.tr,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _featuredArtists.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.start,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox.shrink(),
                            song.album != null
                                ? Container(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 1),
                                          child: Text(
                                            'Album'.tr,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          song.album!.name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.start,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox.shrink(),
                            _writeredArtists != ''
                                ? Container(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 1),
                                          child: Text(
                                            'Writer Artists'.tr,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _writeredArtists.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.start,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox.shrink(),
                            _producerArtists != ''
                                ? Container(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 1),
                                          child: Text(
                                            'Producer Artists'.tr,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _producerArtists.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.start,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox.shrink(),
                            Column(
                              children: <Widget>[
                                code == 'dQw4w9WgXcQ' && code == 'null'
                                    ? SizedBox.shrink()
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Divider(
                                              color: Colors.white,
                                              thickness: 0.7,
                                              endIndent: 5,
                                            ),
                                          ),
                                          Text(
                                            'Official video'.tr,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Expanded(
                                            child: Divider(
                                              color: Colors.white,
                                              thickness: 0.7,
                                              indent: 5,
                                            ),
                                          ),
                                        ],
                                      ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: player,
                                ),
                                song.releaseDate != null
                                    ? Column(
                                        children: [
                                          Divider(
                                              color: Colors.white,
                                              thickness: 0.7,
                                              indent: 0,
                                              endIndent: 0),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 3, bottom: 5),
                                            child: Text(
                                              'Release date'.tr +
                                                  DateFormat.yMMMMd().format(
                                                      song.releaseDate!),
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.start,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      )
                                    : SizedBox.shrink(),
                              ],
                            ),
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
}
