import 'package:coffe_shop_app/features/customiztion_order/presentation/views/customization_order_view.dart';
import 'package:flutter/material.dart';

import 'coffee_card.dart';

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 18.0,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const CustomizationOrderView();
                },
              ));
            },
            child: const CoffeeCard(
              assetName: 'assets/images/image-6.png',
              coffeeName: 'Arabica',
              description: 'Lorem ipsum dolor',
              price: 18,
            ),
          ),
          const CoffeeCard(
            assetName: 'assets/images/image-8.png',
            coffeeName: 'Robusta',
            description: 'Lorem ipsum dolor sit amet',
            price: 20,
          ),
          const CoffeeCard(
            assetName: 'assets/images/image-9.png',
            coffeeName: 'Excelsa',
            description: 'Lorem ipsum dolor sit ',
            price: 15,
          ),
          const CoffeeCard(
            assetName: 'assets/images/image-10.png',
            coffeeName: 'Liberica',
            description: 'Lorem ipsum dolor sit',
            price: 12,
          ),
        ]);
  }
}
