import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/logic/cubit/search/search_cubit.dart';
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
  final TextEditingController _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          children: [
            DefaultAppTextFormField(
              labelText: 'Search'.tr,
              hintText: 'Enter the name of the song'.tr,
              textEditingController: _searchTextController,
              textInputAction: TextInputAction.search,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onEditingComplete: () => BlocProvider.of<SearchCubit>(context)
                  .fetchListOfSongs(_searchTextController.text),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  return state.map(
                    initial: (initial) => const SizedBox.shrink(),
                    loading: (loading) => const Center(child: LoadingWidget()),
                    loaded: (loaded) => SearchListWidget(
                      searchList: loaded.searchList,
                    ),
                    noFound: (noFound) => Center(
                        child: Text('Your search returned no result'.tr)),
                    error: (error) =>
                        Center(child: Text('Something went wrong'.tr)),
                  );
                },
              ),
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
          artistName: Text(searchList[index].result.primaryArtist.name),
          pictureUrl: searchList[index].result.headerImageUrl,
          nameSong: Text(searchList[index].result.title),
          widget: SongInfo(songId: searchList[index].result.id),
        );
      },
    );
  }
}
