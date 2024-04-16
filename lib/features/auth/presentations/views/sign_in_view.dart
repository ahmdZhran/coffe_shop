import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:coffe_shop_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

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
                    AppStrings.welcomeBack,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomTextFormField(hintText: AppStrings.emailAddress),
                  const SizedBox(height: 20),
                  const CustomTextFormField(
                    hintText: 'Passord',
                  ),
                  const SizedBox(height: 30),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      AppStrings.forgotPassword,
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  const SizedBox(height: 40),
                  CustomElevatedButton(
                    width: double.infinity,
                    height: 70,
                    text: 'Sign In',
                    onPressed: () {},
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
                  const SizedBox(height: 130),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.dontHaveAnAccount,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                        ),
                      ),
                      Text(
                        AppStrings.register,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
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
