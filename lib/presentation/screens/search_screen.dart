import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_lyrics/logic/cubit/search/search_cubit.dart';
import 'package:music_lyrics/presentation/widgets/loading_widget.dart';
import 'package:music_lyrics/service/models/search.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;
import 'package:music_lyrics/presentation/widgets/song_small_pic.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/presentation/widgets/drawer.dart';

class MainSearch extends StatelessWidget {
  MainSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMain(),
      appBar: AppBar(),
      body: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: Column(
          children: [
            Container(
              child: TextField(
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
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
                onEditingComplete: () => BlocProvider.of<SearchCubit>(context)
                    .fetch(_searchController.text),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                if (state is SearchInitial) {
                  return SizedBox.shrink();
                }
                if (state is SearchCompleted) {
                  return SearchListWidget(
                    searchList: state.searchList,
                  );
                }
                if (state is SearchNoFind) {
                  return Center(child: Text('No data'));
                }
                if (state is SearchLoading) {
                  return LoadingWidget();
                } else
                  return LoadingWidget();
              }),
            ),
          ],
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
    return ListView.builder(
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
    );
  }
}
