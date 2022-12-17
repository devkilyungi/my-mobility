import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mymobility_flutter/constants.dart';
import 'package:mymobility_flutter/components/reusable_card.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookmarks"),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              context.goNamed(
                'more_info',
                params: {
                  'info':
                      'This is some sample information for the bookmarks screen',
                },
              );
            },
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 9.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ReusableCard(
                  colour: kContentColorDarkTheme,
                  cardChild: Row(
                    children: [
                      const Expanded(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('default_location.png'),
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
                  onPress: () {});
            }),
      ),
    );
  }
}
