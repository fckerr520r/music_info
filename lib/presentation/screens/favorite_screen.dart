import 'package:flutter/material.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';
import 'package:music_lyrics/service/models/song.dart';
import 'package:music_lyrics/presentation/widgets/song_small_pic.dart';
import 'package:music_lyrics/presentation/widgets/drawer.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;
import 'package:music_lyrics/presentation/widgets/loading_widget.dart';
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
                          return SongSmallPicture(
                            songId: _favoriteList[index].id,
                            artistName: _favoriteList[index].primaryArtist.name,
                            backgroundColor: Style.Colors.backgroundColorLight,
                            //     _favoriteList[index].songArtPrimaryColor,
                            picUrl: _favoriteList[index].headerImageUrl,
                            nameSong: _favoriteList[index].title,
                          );
                        },
                      ),
                    ),
            ),
    );
  }
}
