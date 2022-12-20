import 'package:flutter/material.dart';
import 'package:mymobility_flutter/constants.dart';
import 'package:mymobility_flutter/components/reusable_card.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookmarks"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 9.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                              'Short Description',
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
                  onPress: () {});
            }),
      ),
    );
  }
}
