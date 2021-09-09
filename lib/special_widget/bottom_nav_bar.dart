import 'package:flutter/material.dart';
import 'package:music_lyrics/screens/basic/home_screen.dart';
import 'package:music_lyrics/screens/basic/search_screen.dart';
import 'package:music_lyrics/special_widget/drawer.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: Business',
    ),
    MainSearch(),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMain(),
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: _widgetOptions.elementAt(_selectedTab),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'.tr,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Favorite'.tr,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search'.tr,
          ),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
