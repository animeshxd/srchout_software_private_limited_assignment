import 'package:flutter/material.dart';

import 'constrains.dart';
import 'widgets/search_field_bar.dart';
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
                SizedBox(
                  width: 324.pw,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25.p),
                    child: const SearchFieldBar(),
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
