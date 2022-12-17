import 'package:flutter/material.dart';

import '../components/custom_search_delegate.dart';

final now = DateTime.now();

String determineGreeting() {
  if (now.hour < 12) {
    return 'Good Morning';
  } else if (now.hour < 18) {
    return 'Good Afternoon';
  } else {
    return 'Good Evening';
  }
}

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(determineGreeting()),
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
