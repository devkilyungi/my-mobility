import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoreInfo extends StatelessWidget {
  final String info;
  const MoreInfo({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Info'),
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_sharp)),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Text(info),
      ),
    );
  }
}
