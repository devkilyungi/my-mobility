import 'package:flutter/material.dart';
import 'package:mymobility_flutter/screens/bookmarks_screen.dart';
import 'package:mymobility_flutter/screens/map_screen.dart';
import 'package:mymobility_flutter/screens/profile_screen.dart';
import 'package:mymobility_flutter/utilities/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List screens = [
    const HomePage(),
    const MapScreen(),
    const BookmarksScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Good Morning'),
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: kLightGreen,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          backgroundColor: kWhite,
          onDestinationSelected: (int selectedIndex) {
            setState(() {
              _currentIndex = selectedIndex;
            });
          },
          selectedIndex: _currentIndex,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: 'For you'),
            NavigationDestination(
                icon: Icon(Icons.location_on_outlined), label: 'Explore'),
            NavigationDestination(
                icon: Icon(Icons.bookmarks_outlined), label: 'My Library'),
            NavigationDestination(
                icon: Icon(Icons.person_outline), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
