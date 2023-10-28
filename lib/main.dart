import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:srchout_software_private_limited_assignment/view/bike_details/bike_details_view.dart';
import 'package:srchout_software_private_limited_assignment/view/home/home_view.dart';

import 'constrains.dart';
import 'view/checkout/check_out_view.dart';

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
        textTheme: GoogleFonts.robotoTextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppTheme.mainColor,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyAppView(),
        '/home': (context) => const HomeView(),
        '/checkout': (context) => const CheckOutView(),
        '/details': (context) => const BikeDetailsView(),
      },
    );
  }
}

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('/home'),
              child: const Text('/home'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('/checkout'),
              child: const Text('/checkout'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('/details'),
              child: const Text('/details'),
            ),
          ],
        ),
      ),
    );
  }
}
