import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionIcon extends StatelessWidget {
  final String assetName;

  const ActionIcon({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: SvgPicture.asset(
        assetName,
        height: 30,
        width: 30,
      ),
    );
  }
}
