import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class RentButton extends StatelessWidget {
  const RentButton({
    super.key,
    required this.price,
  });
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.p,
      width: LayoutSize.width * .6,
      constraints: BoxConstraints(maxHeight: 63.p, maxWidth: 203.p),
      margin: EdgeInsets.only(right: 23.pf),
      decoration: BoxDecoration(
        color: AppTheme.secondaryCOlor,
        border: Border.all(
          color: AppTheme.borderColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Rent',
            style: AppTheme.textStyle.copyWith(
              color: AppTheme.mainColor,
              fontSize: 25.pf,
              height: 29.pf / 25.pf,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$price/",
                  style: GoogleFonts.risque(
                    fontSize: 18.pf,
                    height: 21.pf / 18.pf,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.mainColor,
                  ),
                ),
                TextSpan(
                  text: "per day",
                  style: AppTheme.textStyle.copyWith(
                    fontSize: 16.pf,
                    height: 20.pf / 16.pf,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.mainColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
