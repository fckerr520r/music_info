import 'dart:async';
import 'package:flutter/material.dart';
import 'package:music_lyrics/api/genius_api/genius_repository.dart';
import 'package:music_lyrics/api/genius_api/jsons/artist.dart';
import 'package:music_lyrics/api/genius_api/jsons/song.dart';
import 'package:music_lyrics/special_widget/drawer.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/screens/basic/artist_info_widgets/artist_info_main_screen.dart';
import 'package:music_lyrics/screens/basic/song_info.dart';
import 'package:music_lyrics/special_widget/loading_widget.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<ArtistClass> _listTopArtists = [];
  List<Song> _listTopSongs = [];
  List<Song> _listTopCounrtySong = [];
  bool _isLoading = true;
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  late Song currentSong;
  late ArtistClass currentCountryArtist;
  late Song currentCountrySong;

  @override
  void initState() {
    super.initState();
    getJsonData();
  }

  Future<void> _refresh() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 2));
    setState(() {});
  }

  Future<void> getJsonData() async {
    _listTopArtists = await GeniusRepository().getListArtist();
    _listTopSongs = await GeniusRepository().getListSong();
    _listTopCounrtySong = await GeniusRepository().getTopCounrtySong();
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void state() {
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _mainScreenWidget();
  }

  Widget _mainScreenWidget() {
    if (_listTopArtists.length == 0 ||
        _listTopSongs.length == 0 ||
        _listTopCounrtySong.length == 0) {
      return Scaffold(
        drawer: DrawerMain(),
        appBar: AppBar(
          backgroundColor: Style.Colors.backgroundColorLight,
          title: Center(
            child: Text(
              '',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: RefreshIndicator(
          key: refreshKey,
          onRefresh: _refresh,
          child: _isLoading
              ? LoadingWidget()
              : Container(
                  color: Style.Colors.backgroundColor,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Something went wrong 🙁".tr,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ),
                ),
        ),
      );
    } else
      return Scaffold(
        drawer: DrawerMain(),
        appBar: AppBar(
          backgroundColor: Style.Colors.backgroundColorLight,
        ),
        body: Container(
          color: Style.Colors.backgroundColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  _trendSong(),
                  SizedBox(height: 10),
                  _popularSongInCountry(),
                  SizedBox(height: 10),
                  _popularArtistInCountry(),
                ],
              ),
            ),
          ),
        ),
      );
  }

  Widget _trendSong() {
    return Column(
      children: [
        Text(
          'Trending now'.tr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            itemCount: _listTopSongs.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 13.0),
                child: GestureDetector(
                  onTap: () {
                    currentSong = _listTopSongs[index];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SongInfo(songId: currentSong.id),
                      ),
                    );
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 220,
                        height: 250,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Style.Colors.backgroundColor.withOpacity(0.1),
                              Style.Colors.backgroundColor.withOpacity(0.4),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Style.HexColor(
                                  _listTopSongs[index].songArtPrimaryColor),
                            )
                          ],
                          image: DecorationImage(
                              image: NetworkImage(
                                  _listTopSongs[index].headerImageUrl),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.only(right: 8, left: 8),
                          child: SizedBox(width: 204,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _listTopSongs[index].title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  _listTopSongs[index].primaryArtist.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _popularArtistInCountry() {
    return Column(
      children: [
        Text(
          'Popular artist (country)'.tr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: _listTopArtists.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 13),
                  child: SizedBox(
                    width: 120,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            currentCountryArtist = _listTopArtists[index];
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArtistInfo(
                                    artistId: currentCountryArtist.id),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    _listTopArtists[index].imageUrl),
                                radius: 60,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                _listTopArtists[index].name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
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
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _popularSongInCountry() {
    return Column(
      children: [
        Text(
          'Popular songs (country)'.tr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: _listTopCounrtySong.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 13),
                child: SizedBox(
                  width: 150,
                  child: GestureDetector(
                    onTap: () {
                      currentCountrySong = _listTopCounrtySong[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SongInfo(songId: currentCountrySong.id),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 150,
                          height: 140,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Style.HexColor(
                                    _listTopCounrtySong[index]
                                        .songArtPrimaryColor),
                              )
                            ],
                            image: DecorationImage(
                                image: NetworkImage(
                                    _listTopCounrtySong[index]
                                        .headerImageUrl),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          _listTopCounrtySong[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          _listTopCounrtySong[index].primaryArtist.name,
                          style: TextStyle(
                            color: Style.Colors.letterMainColor,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
