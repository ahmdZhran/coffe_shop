import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CoffeeCard extends StatelessWidget {
  final String assetName;
  final String coffeeName;
  final double price;
  final String size; // Added field for size text
  final String description; // Added field for description text

  const CoffeeCard({
    super.key,
    required this.assetName,
    required this.coffeeName,
    required this.price,
    this.size = '', // Optional size text
    this.description = '', // Optional description text
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 1.0,
            )
          ],
          color: AppColors.primaryColor,
        ),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Image.asset(assetName, height: 150.0),
              ),
            ),
            Positioned(
              bottom: 25.0,
              left: 10.0,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: coffeeName,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: description.isNotEmpty ? 20.0 : 20.0,
              right: 10.0,
              child: Text(
                '\$${price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.backgroundColor,
                ),
              ),
            ),
            const Positioned(
              top: 10.0,
              right: 10.0,
              child: Icon(Icons.favorite_outline, color: Colors.red),
            ),
            Positioned(
              bottom: 5.0,
              left: 10.0,
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
