import 'package:flutter/material.dart';
import 'package:mymobility_flutter/screens/bookmarks_screen.dart';
import 'package:mymobility_flutter/screens/home_page.dart';
import 'package:mymobility_flutter/screens/map_screen.dart';
import 'package:mymobility_flutter/screens/profile_screen.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const HomepageScreen(),
    const MapScreen(),
    const BookmarksScreen(),
    const ProfileScreen()
  ];
  List<String> appBarTitles = [
    'Good Morning',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int currentPageIndex) {
          setState(() {
            _currentIndex = currentPageIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'For You',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks_outlined),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
