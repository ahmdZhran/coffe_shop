import 'package:coffe_shop_app/core/utils/app_strings.dart';
import 'package:coffe_shop_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import 'count_of_cub_widget.dart';
import 'size_of_cub_widget.dart';

class BodyOfCustomizationWidget extends StatelessWidget {
  const BodyOfCustomizationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
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
          const SizedBox(height: 60),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizeOfCubWidget(
                  heightOfContaner: 66,
                  widthOfContainer: 66,
                  heightOfCub: 40,
                  widthOfCub: 40,
                  text: 'Small',
                ),
                SizedBox(width: 20),
                SizeOfCubWidget(
                  heightOfContaner: 94,
                  widthOfContainer: 94,
                  heightOfCub: 59,
                  widthOfCub: 59,
                  text: 'Meduim',
                ),
                SizedBox(width: 20),
                SizeOfCubWidget(
                  heightOfContaner: 122,
                  widthOfContainer: 122,
                  heightOfCub: 83,
                  widthOfCub: 83,
                  text: 'Large',
                ),
              ],
            ),
          ),
          const CountOfCubWidget(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '\$20',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomElevatedButton(
                    height: 55,
                    width: 300,
                    onPressed: () {},
                    text: AppStrings.addToCart,
                    fontColor: AppColors.backgroundColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
