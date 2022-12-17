import 'package:flutter/material.dart';
import 'package:mymobility_flutter/components/reusable_card.dart';
import 'package:mymobility_flutter/constants.dart';

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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15.0),
                alignment: Alignment.topLeft,
                height: 45.0,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                child: const FractionallySizedBox(
                  widthFactor: 0.8,
                  child: TabBar(
                    tabs: [
                      Tab(text: 'Toilet'),
                      Tab(text: 'Parking'),
                      Tab(text: 'Guides'),
                    ],
                  ),
                ),
              ),
              const Text(
                'Suggestions',
                style: kTitleLabelStyle,
              ),
              Expanded(
                  child: Column(
                children: [
                  ReusableCard(
                      colour: kContentColorDarkTheme,
                      cardChild: Row(
                        children: [
                          const Expanded(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('default_location.png'),
                              minRadius: 25.0,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Place Name',
                                  style: kPlaceNameStyle,
                                ),
                                Text(
                                  'Description',
                                  style: kDescriptionStyle,
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              '2Km away',
                              style: kDescriptionStyle,
                            ),
                          ),
                        ],
                      ),
                      onPress: () {}),
                  ReusableCard(
                      colour: kContentColorDarkTheme,
                      cardChild: Row(
                        children: [
                          const Expanded(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('default_location.png'),
                              minRadius: 25.0,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Place Name',
                                  style: kPlaceNameStyle,
                                ),
                                Text(
                                  'Description',
                                  style: kDescriptionStyle,
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              '2Km away',
                              style: kDescriptionStyle,
                            ),
                          ),
                        ],
                      ),
                      onPress: () {}),
                  ReusableCard(
                      colour: kContentColorDarkTheme,
                      cardChild: Row(
                        children: [
                          const Expanded(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('default_location.png'),
                              minRadius: 25.0,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Place Name',
                                  style: kPlaceNameStyle,
                                ),
                                Text(
                                  'Description',
                                  style: kDescriptionStyle,
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              '2Km away',
                              style: kDescriptionStyle,
                            ),
                          ),
                        ],
                      ),
                      onPress: () {}),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
