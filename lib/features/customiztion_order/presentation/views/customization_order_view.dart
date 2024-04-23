import 'package:flutter/material.dart';
import '../widgets/body_of_customization_widget.dart';
import '../widgets/head_of_customization_widget.dart';

class CustomizationOrderView extends StatelessWidget {
  const CustomizationOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HeadOfCustomizationWidget(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BodyOfCustomizationWidget(),
          ),
        ],
      ),
    );
  }
}
