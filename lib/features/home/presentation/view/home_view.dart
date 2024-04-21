import 'package:coffe_shop_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/coffee_gride.dart';
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
              SizedBox(height: 20),
              DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: AppColors.primaryColor,
                      indicator: null,
                      dividerColor: Colors.transparent,
                      indicatorColor: Colors.transparent,
                      unselectedLabelColor: Colors.white,
                      labelStyle: TextStyle(fontSize: 17),
                      labelPadding: EdgeInsets.symmetric(horizontal: 2),
                      tabs: [
                        Tab(text: 'Hot Coffees'),
                        Tab(text: 'Ice Teas'),
                        Tab(text: 'Hot Teas'),
                        Tab(text: 'Drinks'),
                      ],
                    ),
                    SizedBox(
                      height: 500,
                      child: TabBarView(children: [
                        CoffeeGrid(),
                        Center(child: Text('Tab 2 Content')),
                        Center(child: Text('Tab 1 Content')),
                        Center(child: Text('Tab 2 Content')),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
