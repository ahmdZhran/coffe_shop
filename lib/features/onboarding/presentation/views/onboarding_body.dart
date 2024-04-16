import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:coffe_shop_app/core/utils/app_strings.dart';
import 'package:coffe_shop_app/core/utils/text_styles.dart';
import 'package:coffe_shop_app/core/widgets/custom_button.dart';
import 'package:coffe_shop_app/features/auth/presentations/views/sign_in_view.dart';
import 'package:coffe_shop_app/features/auth/presentations/views/sign_up_view.dart';
import 'package:coffe_shop_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import '../widgets/head_onboarding.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                onBoardingData[index].imagePath,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  HeadOfOnboardingWidget(controller: controller),
                  const SizedBox(height: 170),
                  Text(
                    onBoardingData[index].title,
                    style: CustomTextStyles.popinsBold35,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Text(
                      onBoardingData[index].subTitle,
                      style: const TextStyle(color: Colors.amber),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  if (index ==
                      onBoardingData.length - 1) // Display button on last page
                    Positioned(
                      bottom: 50,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          const SizedBox(height: 320),
                          CustomElevatedButton(
                            width: 400,
                            height: 70,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SignUpView();
                                  },
                                ),
                              );
                            },
                            text: AppStrings.register,
                            fontColor: AppColors.backgroundColor,
                          ),
                          const SizedBox(height: 20),
                          CustomElevatedButton(
                            width: 400,
                            height: 70,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SignInView();
                                  },
                                ),
                              );
                            },
                            text: AppStrings.signIn,
                            color: Colors.transparent,
                            fontColor: AppColors.primaryColor,
                            side: const BorderSide(
                              color: AppColors.primaryColor,
                              width: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
