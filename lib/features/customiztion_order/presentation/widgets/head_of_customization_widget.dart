import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';

class HeadOfCustomizationWidget extends StatelessWidget {
  const HeadOfCustomizationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/image-18.png'),
          fit: BoxFit.contain,
          alignment: Alignment.topCenter,
        ),
      ),
      child: const Column(
        children: [
          SizedBox(height: 35),
          Text(
            'Liberica Coffee',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: AppStrings.poppinsFamily,
            ),
          ),
        ],
      ),
    );
  }
}
