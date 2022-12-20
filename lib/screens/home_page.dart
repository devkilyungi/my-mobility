import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mymobility_flutter/components/reusable_card.dart';
import 'package:mymobility_flutter/constants.dart';
import 'map_screen.dart';

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
  const HomepageScreen({
    Key? key,
    this.latitude,
    this.longitude,
  }) : super(key: key);

  final String? latitude;
  final String? longitude;

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  Widget buildSuggestionCards() {
    return Expanded(
      child: ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) {
            return ReusableCard(
                cardChild: Row(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(images[index]),
                        minRadius: 28.0,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            places[index],
                            style: kPlaceNameStyle,
                          ),
                          const Text(
                            'Short description',
                            style: kDescriptionStyle,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '${2 + index}Km away',
                        style: kDescriptionStyle,
                      ),
                    ),
                  ],
                ),
                onPress: () {
                  print(widget.latitude);
                  print(widget.longitude);
                });
          }),
    );
  }

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
              const Text(
                'Suggestions',
                style: kTitleLabelStyle,
              ),
              const SizedBox(height: 10),
              buildSuggestionCards(),
            ],
          ),
        ),
      ),
    );
  }
}
