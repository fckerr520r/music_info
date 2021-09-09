import 'package:flutter/material.dart';
import 'package:music_lyrics/api/genius_api/jsons/search.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/api/genius_api/genius_repository.dart';
import 'package:music_lyrics/single_widgets/song_small_pic.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/special_widget/loading_widget.dart';
import 'package:music_lyrics/special_widget/drawer.dart';

class MainSearch extends StatefulWidget {
  MainSearch({Key? key}) : super(key: key);

  @override
  _MainSearchState createState() => _MainSearchState();
}

class _MainSearchState extends State<MainSearch> {
  final TextEditingController _searchController = TextEditingController();
  bool _isLoading = false;
  List<Hit> _searchList = [];

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
      appBar: AppBar(),
      body: SizedBox(
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
                  decoration: InputDecoration(
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
              Expanded(
                child: _searchList.isEmpty
                    ? SizedBox.shrink()
                    : SizedBox(
                        child: _isLoading
                            ? LoadingWidget()
                            : SearchListWidget(
                                searchList: _searchList,
                              ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchListWidget extends StatelessWidget {
  const SearchListWidget({
    Key? key,
    required this.searchList,
  }) : super(key: key);
  final List<Hit> searchList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        itemCount: searchList.length,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (BuildContext context, int index) {
          return SongSmallPicture(
            songId: searchList[index].result.id,
            artistName: searchList[index].result.primaryArtist.name,
            backgroundColor: Style.Colors.backgroundColorLight,
            // searchList[index].result.songArtPrimaryColor,
            picUrl: searchList[index].result.headerImageUrl,
            nameSong: searchList[index].result.title,
          );
        },
      ),
    );
  }
}
