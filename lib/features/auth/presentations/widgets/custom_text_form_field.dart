import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:
            const TextStyle(color: Color(0xff828282), fontFamily: "Poppins"),
        fillColor: const Color(0xff101215),
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16.0),
      ),
      obscureText: true,
    );
  }
}
