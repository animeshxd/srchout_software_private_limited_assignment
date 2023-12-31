import 'package:flutter/material.dart';

import '../../constrains.dart';
import '../../data.dart';
import '../../widgets/app_bottom_navigation_bar.dart';
import '../../widgets/items_label.dart';

import 'widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final currentTabIndex = 1;

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10.p),
          child: Column(
            children: [
              const Welcome(),
              const SearchFieldBar(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categories
                      .asMap()
                      .entries
                      .map((kv) => TabButton(
                            labelText: kv.value,
                            isActive: kv.key == currentTabIndex,
                          ))
                      .toList(),
                ),
              ),
              SizedBox(height: 38.ph),
              const ItemsLabel('Popular', 'item'),
              SizedBox(height: 18.ph),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: popularItems.map((e) => BikeItem(bike: e)).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 26.ph, bottom: 18.ph),
                child: const ItemsLabel('Recently', 'viewed'),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: recentlyViewed.length,
                itemBuilder: (context, index) {
                  return RecentlyViewedBikeItem(bike: recentlyViewed[index]);
                },
              )
            ],
          ),
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
