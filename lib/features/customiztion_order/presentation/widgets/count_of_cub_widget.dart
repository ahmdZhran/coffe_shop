import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CountOfCubWidget extends StatelessWidget {
  const CountOfCubWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 70),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primaryColor),
          child: const Icon(Icons.remove),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '5',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primaryColor),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
