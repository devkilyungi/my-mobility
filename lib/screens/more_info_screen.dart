import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  final String info;
  const MoreInfo({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Text(info),
      ),
    );
  }
}
