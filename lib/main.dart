import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: const CheckOutView(),
    );
  }
}
