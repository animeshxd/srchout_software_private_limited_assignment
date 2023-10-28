import 'package:flutter/material.dart';

import 'constrains.dart';
import 'data.dart';
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
        colorScheme: const ColorScheme.light(
            background: AppTheme.mainColor, primary: Colors.black),
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

    debugPrint(LayoutSize.width.toString());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 10.p, top: 25.p),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Welcome(),
                Container(
                  width: 324.p,
                  height: 60.p,
                  margin: EdgeInsets.only(top: 33.p, bottom: 32.p),
                  child: const SearchFieldBar(),
                ),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
