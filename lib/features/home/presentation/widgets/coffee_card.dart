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
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppColors.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(assetName),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffeeName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                            color: AppColors.backgroundColor, fontSize: 10),
                      ),
                    ],
                  ),
                  const Text(
                    '\$12',
                    style: TextStyle(
                        color: AppColors.backgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
