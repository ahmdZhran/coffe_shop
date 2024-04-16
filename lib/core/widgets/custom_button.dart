import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.color,
    required this.onPressed,
    required this.text,
    this.onTap,
    this.width,
    this.height,
    this.side,
    this.fontColor,
  });
  final Color? color;
  final VoidCallback onPressed;
  final String text;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final BorderSide? side;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: side,
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: fontColor,
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
