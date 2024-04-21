import 'package:flutter/material.dart';

import 'coffee_card.dart';

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 17.0,
          children: const [
            CoffeeCard(
              assetName: 'assets/images/image-6.png',
              coffeeName: 'Arabica',
              description: 'Lorem ipsum dolor sit amet cons',
              price: 18,
            ),
            CoffeeCard(
              assetName: 'assets/images/image-8.png',
              coffeeName: 'Robusta',
              description: 'Lorem ipsum dolor sit amet cons',
              price: 20,
            ),
            CoffeeCard(
              assetName: 'assets/images/image-9.png',
              coffeeName: 'Excelsa',
              description: 'Lorem ipsum dolor sit amet cons',
              price: 15,
            ),
            CoffeeCard(
              assetName: 'assets/images/image-10.png',
              coffeeName: 'Liberica',
              description: 'Lorem ipsum dolor sit amet cons',
              price: 12,
            ),
          ]),
    );
  }
}
