import 'package:flutter/material.dart';

import 'profile_section.dart';
import 'action_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ProfileSection(),
        SizedBox(width: 60),
        ActionIcon(iconData: Icons.search_rounded),
        SizedBox(width: 10),
        ActionIcon(iconData: Icons.notifications_outlined),
      ],
    );
  }
}
