import 'package:flutter/material.dart';

import 'constrains.dart';
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
                  width: 324.pw,
                  margin: EdgeInsets.only(top: 33.ph, bottom: 32.ph),
                  child: const SearchFieldBar(),
                ),
                const Row(
                  children: [
                    TabButton(isActive: true, labelText: 'Adventure',),
                    TabButton(isActive: false, labelText: 'a', ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
