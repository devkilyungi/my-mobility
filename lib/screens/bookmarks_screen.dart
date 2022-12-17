import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    );
  }
}
