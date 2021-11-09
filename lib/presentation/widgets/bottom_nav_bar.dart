import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_lyrics/presentation/screens/favorite_screen.dart';
import 'package:music_lyrics/presentation/screens/home_screen.dart';
import 'package:music_lyrics/presentation/screens/search_screen.dart';
import 'package:music_lyrics/presentation/widgets/drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  static final _widgetOptions = <Widget>[
    const HomeScreen(),
    const FavoriteScreen(),
    const SearchScreen(),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) {
      return;
    }
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMain(),
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: _widgetOptions.elementAt(_selectedTab),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.bookmark),
            label: 'Favorite'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: 'Search'.tr,
          ),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
