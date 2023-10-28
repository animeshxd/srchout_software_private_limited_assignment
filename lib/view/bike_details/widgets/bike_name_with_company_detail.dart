import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class BikeNameWithCompanyDetail extends StatelessWidget {
  const BikeNameWithCompanyDetail({
    super.key,
    required this.name,
    required this.company,
  });
  final String name;
  final String company;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: company,
        style: GoogleFonts.robotoSlab(
          fontSize: 22.pf,
          height: 29.pf / 22.pf,
          fontWeight: FontWeight.w400,
        ),
        children: [
          TextSpan(
            text: "\n$name",
            style: AppTheme.textStyle.copyWith(
              fontSize: 21.pf,
              height: 25.pf / 21.pf,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
