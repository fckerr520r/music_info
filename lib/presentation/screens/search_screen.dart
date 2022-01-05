import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/logic/cubit/search/search_cubit.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/screens/song_info.dart';
import 'package:music_lyrics/presentation/widgets/drawer.dart';
import 'package:music_lyrics/service/models/genius_models/search_model/search_genius_model.dart';
import 'package:ui/ui.dart';

class MainSearch extends StatelessWidget {
  const MainSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMain(),
      appBar: AppBar(),
      body: const SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({
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
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          children: [
            TextField(
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              cursorColor: style.Colors.letterColorRed,
              cursorWidth: 1.5,
              controller: _searchController,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                labelText: 'Search'.tr,
                labelStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: style.Colors.letterMainColor.withOpacity(0.3),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: style.Colors.letterMainColor.withOpacity(0.8),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              onEditingComplete: () => BlocProvider.of<SearchCubit>(context)
                  .fetch(_searchController.text),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                if (state is SearchInitial) {
                  return const SizedBox.shrink();
                }
                if (state is SearchCompleted) {
                  return SearchListWidget(
                    searchList: state.searchList,
                  );
                }
                if (state is SearchNoFind) {
                  return const Center(child: Text('No data'));
                }
                if (state is SearchLoading) {
                  return const LoadingWidget();
                } else {
                  return const LoadingWidget();
                }
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
      itemBuilder: (context, index) {
        return SongSmallPicture(
          songId: searchList[index].result.id,
          artistName: searchList[index].result.primaryArtist.name,
          picUrl: searchList[index].result.headerImageUrl,
          nameSong: searchList[index].result.title,
          widget: SongInfo(songId: searchList[index].result.id),
        );
      },
    );
  }
}
