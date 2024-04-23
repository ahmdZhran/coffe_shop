import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';

class SizeOfCubWidget extends StatelessWidget {
  const SizeOfCubWidget({
    super.key,
    this.heightOfContaner,
    this.widthOfContainer,
    this.heightOfCub,
    this.widthOfCub, this.text,
  });
  final double? heightOfContaner;
  final double? widthOfContainer;
  final double? heightOfCub;
  final double? widthOfCub;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: heightOfContaner,
          width: widthOfContainer,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/drinks-line.svg',
                fit: BoxFit.contain,
                height: heightOfCub,
                width: heightOfCub,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
         Text(
          text.toString(),
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
