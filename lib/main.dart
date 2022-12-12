import 'package:flutter/material.dart';
import 'package:mymobility_flutter/navigation/navigation.dart';
import 'package:mymobility_flutter/theme.dart';

void main() => runApp(const MyMobility());

class MyMobility extends StatelessWidget {
  const MyMobility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: const NavigationPage(),
    );
  }
}
