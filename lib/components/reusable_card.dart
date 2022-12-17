import 'package:flutter/material.dart';
import 'package:mymobility_flutter/constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.cardChild, required this.onPress});

  final Widget cardChild;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 9.0),
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
        decoration: BoxDecoration(
          color: kCardBackgroundColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: cardChild,
      ),
    );
  }
}
