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
        SizedBox(width: 80),
        ActionIcon(assetName: 'assets/images/search-line.svg'),
        SizedBox(width: 10),
        ActionIcon(
          assetName: 'assets/images/notification-4-line.svg',
        ),
      ],
    );
  }
}
