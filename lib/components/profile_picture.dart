import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mymobility_flutter/constants.dart';

class ProfilePicture extends StatelessWidget {
  final String imagePath;
  final void Function() onClicked;
  final bool isEdit;

  const ProfilePicture(
      {Key? key,
      required this.imagePath,
      required this.onClicked,
      required this.isEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(kPrimaryColor),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          height: 128.0,
          width: 128.0,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) {
    return ClipOval(
      child: Container(
        color: kContentColorDarkTheme,
        padding: const EdgeInsets.all(3.0),
        child: ClipOval(
          child: Container(
            color: color,
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              isEdit ? Icons.add_a_photo : Icons.edit,
              color: kContentColorDarkTheme,
              size: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
