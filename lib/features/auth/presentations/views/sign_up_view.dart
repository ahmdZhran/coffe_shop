import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:coffe_shop_app/core/utils/app_strings.dart';
import 'package:coffe_shop_app/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/image-10.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  SvgPicture.asset('assets/images/Vector.svg'),
                  const SizedBox(height: 20),
                  const Text(
                    "Register your Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomTextFormField(hintText: AppStrings.fristName),
                  const SizedBox(height: 20),
                  const CustomTextFormField(hintText: AppStrings.emailAddress),
                  const SizedBox(height: 20),
                  const CustomTextFormField(hintText: AppStrings.password),
                  const SizedBox(height: 20),
                  const CustomTextFormField(hintText: AppStrings.password),
                  const SizedBox(height: 20),
                  const CustomTextFormField(
                    hintText: 'Confirm Password',
                  ),
                  const SizedBox(height: 60),
                  CustomElevatedButton(
                    width: double.infinity,
                    height: 70,
                    text: AppStrings.signUp,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomeView();
                          },
                        ),
                      );
                    },
                    fontColor: AppColors.backgroundColor,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.facebook,
                          color: Colors.white,
                          size: 70,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.g_mobiledata,
                          color: Colors.white,
                          size: 80,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.apple,
                          color: Colors.white,
                          size: 70,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.alreadyHaveAnAccount,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                        ),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
