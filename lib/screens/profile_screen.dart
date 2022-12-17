import 'package:flutter/material.dart';
import 'package:mymobility_flutter/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:mymobility_flutter/components/user_preferences.dart';
import 'package:mymobility_flutter/components/profile_picture.dart';

import '../components/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              context.goNamed('settings');
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: kDefaultPadding),
        physics: const BouncingScrollPhysics(),
        children: [
          ProfilePicture(
            imagePath: user.imagePath,
            isEdit: false,
            onClicked: () {
              context.pushNamed('edit_profile');
            },
          ),
          const SizedBox(height: 24.0),
          buildName(user),
          const SizedBox(height: 48.0),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) {
    return Column(
      children: [
        Text(
          user.name,
          style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4.0),
        Text(
          user.email,
          style: const TextStyle(fontSize: 16.0, color: kSecondaryColor),
        ),
      ],
    );
  }

  Widget buildAbout(User user) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: Column(
        children: [
          const Text(
            'About',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16.0),
          Text(
            user.about,
            style: const TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
  }
}
