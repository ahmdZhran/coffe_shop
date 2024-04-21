import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/discount_container_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 20),
              DiscountsContainerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
