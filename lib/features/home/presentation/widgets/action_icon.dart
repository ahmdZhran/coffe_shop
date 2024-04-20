import 'package:flutter/material.dart';

class ActionIcon extends StatelessWidget {
  final IconData iconData;

  const ActionIcon({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Icon(
        iconData,
        size: 40,
        color: Colors.white,
      ),
    );
  }
}
