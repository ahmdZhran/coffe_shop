import 'package:coffe_shop_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';

class BodyOfCustomizationWidget extends StatelessWidget {
  const BodyOfCustomizationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      decoration: const BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            AppStrings.ingredients,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: AppStrings.poppinsFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Slider(
            activeColor: AppColors.primaryColor,
            value: 1.0,
            onChanged: (value) {},
          ),
          const Text(
            'Milk',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 20),
          const Text(
            AppStrings.coffeeSize,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: AppStrings.poppinsFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              'assets/images/drinks-line.svg',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
