import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'coffee_gride.dart';

class CustomTapBarWidget extends StatelessWidget {
  const CustomTapBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
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
    );
  }
}
