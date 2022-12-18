import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mymobility_flutter/constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_sharp)),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 9.0),
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text('ACCOUNT SETTINGS'),
                  ListTile(
                    title: const Text(
                      'Notifications',
                      style: kPlaceNameStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Text('LEGAL'),
                  ListTile(
                    title: const Text(
                      'Terms of Service',
                      style: kPlaceNameStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Privacy Settings',
                      style: kPlaceNameStyle,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            const Expanded(
                flex: 3,
                child: Center(
                  child: Text('v1.0.1'),
                )),
          ],
        ),
      ),
    );
  }
}
