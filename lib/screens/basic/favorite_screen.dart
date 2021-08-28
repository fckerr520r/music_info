import 'package:flutter/material.dart';
import 'package:music_lyrics/api/genius_api/genius_repository.dart';
import 'package:music_lyrics/api/genius_api/jsons/song.dart';
import 'package:music_lyrics/screens/basic/song_info.dart';
import 'package:music_lyrics/special_widget/drawer.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/special_widget/loading_widget.dart';
import 'package:get/get.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isLoading = true;
  late Song currentSong;
  List<Song> _favoriteList = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    _favoriteList = await GeniusRepository().getFavoriteSongs();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMain(),
      appBar: AppBar(
        backgroundColor: Style.Colors.backgroundColorLight,
        title: Text('Favorite'.tr),
      ),
      body: _isLoading
          ? LoadingWidget()
          : Container(
              color: Style.Colors.backgroundColor,
              height: double.infinity,
              child: _favoriteList.length == 0
                  ? Center(
                      child: Text(
                        'The list is empty'.tr,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  : Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                      child: ListView.builder(
                        itemCount: _favoriteList.length,
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              currentSong = _favoriteList[index];
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SongInfo(songId: currentSong.id),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Stack(
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    height: 70,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Image.network(
                                            _favoriteList[index].headerImageUrl,
                                            width: 100,
                                            height: 80,
                                            fit: BoxFit.cover,
                                          ),
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Style.HexColor(
                                                    _favoriteList[index]
                                                        .songArtPrimaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 13),
                                              Text(
                                                _favoriteList[index].title,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              SizedBox(height: 9),
                                              Text(
                                                  _favoriteList[index]
                                                      .primaryArtist
                                                      .name
                                                      .toString(),
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                  ),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis),
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
                      ),
                    ),
            ),
    );
  }
}
