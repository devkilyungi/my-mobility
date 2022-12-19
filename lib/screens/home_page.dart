import 'package:flutter/material.dart';
import 'package:mymobility_flutter/components/reusable_card.dart';
import 'package:mymobility_flutter/constants.dart';

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
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ReusableCard(
                          cardChild: Row(
                            children: [
                              const Expanded(
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(dummyUrl),
                                  minRadius: 28.0,
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
                          onPress: () {});
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
