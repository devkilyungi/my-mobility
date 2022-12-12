import 'package:flutter/material.dart';

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
        //todo: add an if selection to determine time of day and add appropriate text to title of screen
        //todo: also check whether it is better to have it in the appbar or as a piece of text at the top of the page
        title: const Text('Good Morning'),
      ),
    );
  }
}
