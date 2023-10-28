import 'package:flutter/material.dart';

import 'constrains.dart';
import 'widgets/app_bottom_navigation_bar.dart';
import 'widgets/custom_app_bar.dart';

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
        appBarTheme: const AppBarTheme(
          backgroundColor: AppTheme.mainColor,
        ),
      ),
      home: const CheckOutView(),
    );
  }
}

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Check Out'),
        bottomNavigationBar: const AppBottomNavigationBar(),
        body: const SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
