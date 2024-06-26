import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:coffe_shop_app/features/onboarding/presentation/views/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeScript());
}

class CoffeScript extends StatelessWidget {
  const CoffeScript({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Coffe Scritp',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        useMaterial3: true,
      ),
      home: const OnboardingView(),
    );
  }
}
