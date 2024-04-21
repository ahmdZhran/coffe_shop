import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import '../view/home_view.dart';

class CustomMoltenNavigationBar extends StatefulWidget {
  const CustomMoltenNavigationBar({Key? key}) : super(key: key);

  @override
  CustomMoltenNavigationBarState createState() =>
      CustomMoltenNavigationBarState();
}

class CustomMoltenNavigationBarState extends State<CustomMoltenNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeView(),
    const CartView(),
    const FavoriteView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: MoltenBottomNavigationBar(
        domeCircleColor: AppColors.backgroundColor,
        barColor: AppColors.primaryColor,
        selectedIndex: _currentIndex,
        onTabChange: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        tabs: [
          MoltenTab(
              selectedColor: Colors.white,
              unselectedColor: AppColors.backgroundColor,
              icon: const Icon(Icons.home_outlined),
              title: const Text('')),
          MoltenTab(
            selectedColor: Colors.white,
            icon: const Icon(Icons.shopping_cart),
            title: const Text(''),
            unselectedColor: AppColors.backgroundColor,
          ),
          MoltenTab(
            selectedColor: Colors.white,
            icon: const Icon(Icons.favorite_outline),
            title: const Text(''),
            unselectedColor: AppColors.backgroundColor,
          ),
          MoltenTab(
            selectedColor: Colors.white,
            icon: const Icon(Icons.person_2_outlined),
            title: const Text(''),
            unselectedColor: AppColors.backgroundColor,
          ),
        ],
      ),
    );
  }
}

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
