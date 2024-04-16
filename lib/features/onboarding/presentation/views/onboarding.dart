import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:coffe_shop_app/core/utils/app_strings.dart';
import 'package:coffe_shop_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/unsplash_SCbq6uKCyMY.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const SizedBox(height: 230),
              Center(
                child: Image.asset('assets/images/coffeescript logo.png'),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: CustomElevatedButton(
                  height: 56,
                  width: 300,
                  fontColor: AppColors.backgroundColor,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const OnboardingBody();
                      },
                    ));
                  },
                  text: AppStrings.getStarted,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
