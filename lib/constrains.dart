import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Colors.white;
  static const secondaryCOlor = Colors.black;
  static const borderColor = Color(0xFFBABABA);
  static Border get borderStyle => Border.all(width: 2.p, color: borderColor);
  static final labelTextStyle = textStyle.copyWith(
    color: const Color(0xFF8C7E7E),
    fontWeight: FontWeight.w400,
  );
  static final textStyle = GoogleFonts.roboto(color: Colors.black);
}

class AppIcons {
  static var cardWallet = Image.asset('assets/icons/Card Wallet.png');
  static var home = Image.asset('assets/icons/Home.png');
  static var magnfying = SvgPicture.asset('assets/icons/magnfying.svg');
  static var settings = Image.asset('assets/icons/Settings.png');
  static var map = Image.asset('assets/icons/Map Marker.png');
  static var backArrow = SvgPicture.asset('assets/icons/back_arrow.svg');
  static var calender = Image.asset('assets/icons/calender.png');
}

class LayoutSize {
  static Size size = Size.zero;
  static double get width => size.width;
  static double get height => size.height;

  LayoutSize of(BuildContext context) {
    size = MediaQuery.of(context).size;
    return this;
  }

  static void init(BuildContext context) {
    size = MediaQuery.of(context).size;
  }

  static double ph(double height) => (size.height / 976) * height;

  static double pw(double width) => (size.width / 375) * width;
}

extension NumExt on num {
  double get ph => LayoutSize.ph(toDouble());
  double get pw => LayoutSize.pw(toDouble());
  double get p => LayoutSize.pw(toDouble());
  double get pf => LayoutSize.pw(toDouble()) * .97;
}
