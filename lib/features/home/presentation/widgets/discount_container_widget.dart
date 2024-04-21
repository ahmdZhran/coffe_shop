import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';

class DiscountsContainerWidget extends StatelessWidget {
  const DiscountsContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 158, 112, 66),
        borderRadius: BorderRadiusDirectional.circular(12),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get 20% Discount\nOn your First Order!',
                  style: TextStyle(
                    fontFamily: AppStrings.poppinsFamily,
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem ipsum dolor sit amet consectetur.\nVestibulum eget blandit mattis',
                  style: TextStyle(
                    fontFamily: AppStrings.poppinsFamily,
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 170,
            width: 170,
            child: Image.asset(
              'assets/images/image-12.png',
            ),
          )
        ],
      ),
    );
  }
}