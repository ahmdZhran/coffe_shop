import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:coffe_shop_app/core/utils/text_styles.dart';
import 'package:coffe_shop_app/features/auth/presentations/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HeadOfOnboardingWidget extends StatelessWidget {
  const HeadOfOnboardingWidget({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: AppColors.primaryColor,
              dotHeight: 5,
              dotWidth: 10,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const SignUpView();
                },
              ));
            },
            child: const Text(
              'skip',
              style: CustomTextStyles.poppins20,
            ),
          ),
        ],
      ),
    );
  }
}
