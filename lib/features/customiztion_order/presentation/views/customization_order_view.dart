import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../widgets/head_of_customization_widget.dart';

class CustomizationOrderView extends StatelessWidget {
  const CustomizationOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HeadOfCustomizationWidget(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              height: 550,
            ),
          ),
        ],
      ),
    );
  }
}
