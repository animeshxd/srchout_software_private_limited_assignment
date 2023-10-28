import 'package:flutter/material.dart';

import 'constrains.dart';
import 'data.dart';
import 'widgets/app_bottom_navigation_bar.dart';
import 'widgets/bike_item.dart';
import 'widgets/items_label.dart';
import 'widgets/recently_viewed_bike_item.dart';
import 'widgets/search_field_bar.dart';
import 'widgets/tab_button.dart';
import 'widgets/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppTheme.secondaryCOlor,
          background: AppTheme.mainColor,
          primary: AppTheme.secondaryCOlor,
        ),
      ),
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final currentTabIndex = 1;

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 10.p),
          child: SingleChildScrollView(
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
                    children:
                        popularItems.map((e) => BikeItem(bike: e)).toList(),
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
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
