import 'package:flutter/material.dart';
import 'package:mymobility_flutter/constants.dart';
import '../components/profile_picture.dart';
import '../components/text_field_widget.dart';
import '../components/user.dart';
import '../components/user_preferences.dart';
import 'package:go_router/go_router.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Mode"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_sharp)),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 8.0),
        physics: const BouncingScrollPhysics(),
        children: [
          ProfilePicture(
            imagePath: user.imagePath,
            isEdit: true,
            onClicked: () async {},
          ),
          const SizedBox(height: 16.0),
          TextFieldWidget(
            label: 'Full Name',
            text: user.name,
            onChanged: (name) {
              user.setName(name);
            },
          ),
          const SizedBox(height: 16.0),
          TextFieldWidget(
            label: 'Email',
            text: user.email,
            onChanged: (email) {
              user.setEmail(email);
            },
          ),
          const SizedBox(height: 16.0),
          TextFieldWidget(
            label: 'About',
            text: user.about,
            maxLines: 5,
            onChanged: (about) {
              user.setAbout(about);
            },
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
