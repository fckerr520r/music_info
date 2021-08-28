import 'package:flutter/material.dart';
import 'package:music_lyrics/api/genius_api/jsons/search.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/api/genius_api/genius_repository.dart';
import 'package:music_lyrics/screens/basic/song_info.dart';
import 'package:get/get.dart';

import '../../special_widget/drawer.dart';

class MainSearch extends StatefulWidget {
  MainSearch({Key? key}) : super(key: key);

  @override
  _MainSearchState createState() => _MainSearchState();
}

class _MainSearchState extends State<MainSearch> {
  final TextEditingController _searchController = TextEditingController();
  bool _isLoading = false;
  List<Hit> _searchList = [];
  late Hit currentSong;

  Future<void> _searchMain() async {
    _isLoading = true;
    _searchList = await GeniusRepository().getSearch(_searchController.text);
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
      ),
      body: Container(
        color: Style.Colors.backgroundColor,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10),
          child: Column(
            children: [
              Container(
                child: TextField(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  onEditingComplete: _searchMain,
                  cursorColor: Style.Colors.letterColorRed,
                  cursorWidth: 1.5,
                  controller: _searchController,
                  textInputAction: TextInputAction.search,
                  decoration: new InputDecoration(
                    labelText: 'Search'.tr,
                    labelStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Style.Colors.letterMainColor.withOpacity(0.3),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Style.Colors.letterMainColor.withOpacity(0.8),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(child: Container(child: _mainScreenWidget()))
            ],
          ),
        ),
      ),
    );
  }

  Widget _mainScreenWidget() {
    if (_searchList.isEmpty) {
      return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      );
    } else
      return _isLoading
          ? _buildLoadingWidget()
          : Container(
              width: double.infinity,
              color: Style.Colors.backgroundColor,
              child: Container(
                child: ListView.builder(
                  itemCount: _searchList.length,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        currentSong = _searchList[index];
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SongInfo(songId: currentSong.result.id),
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
                                      _searchList[index].result.headerImageUrl,
                                      width: 100,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Style.HexColor(
                                              _searchList[index]
                                                  .result
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
                                          _searchList[index].result.title,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 9),
                                        Text(
                                            _searchList[index]
                                                .result
                                                .primaryArtist
                                                .name
                                                .toString(),
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
                ),
              ),
            );
  }

  Widget _buildLoadingWidget() {
    return Container(
      color: Style.Colors.backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 25.0,
              width: 25.0,
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
                strokeWidth: 4.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
