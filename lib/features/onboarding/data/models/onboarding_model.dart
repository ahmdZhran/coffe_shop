import 'package:coffe_shop_app/core/utils/app_assets.dart';

import '../../../../core/utils/app_strings.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: Assets.onboardingImage1,
    title: AppStrings.embraceCoffeEssence,
    subTitle: AppStrings.subtitle,
  ),
  OnBoardingModel(
    imagePath: Assets.onboardingImage2,
    title: AppStrings.flavorBean,
    subTitle: AppStrings.subtitle2,
  ),
  OnBoardingModel(
    imagePath: Assets.onboardingImage3,
    title: AppStrings.unlockBean,
    subTitle: AppStrings.subBio3,
  ),
];
