import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constrains.dart';
import '../../../models.dart';

class BikeItem extends StatelessWidget {
  const BikeItem({super.key, required this.bike});

  final Bike bike;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225.p,
      width: 143.p,
      margin: EdgeInsets.only(right: 13.p),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: AppTheme.borderStyle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 225.p * .63,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage(bike.image),
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.p),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BikeName(name: bike.name),
                Text(
                  bike.company,
                  style: GoogleFonts.robotoSlab(
                    fontSize: 18.pf,
                    height: 21.pf / 18.pf,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 6.p),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: BikePrice(price: bike.pricePerDay),
                ),
                SizedBox(height: 10.p),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BikePrice extends StatelessWidget {
  const BikePrice({super.key, required this.price, this.color});

  final double price;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "$price/",
            style: GoogleFonts.risque(
              fontSize: 18.pf,
              height: 21.pf / 18.pf,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
          TextSpan(
            text: "per day",
            style: AppTheme.textStyle.copyWith(
              fontSize: 17.pf,
              height: 20.pf / 18.pf,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}

class BikeName extends StatelessWidget {
  const BikeName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: AppTheme.textStyle.copyWith(
        fontSize: 18.pf,
        height: 21.pf / 18.pf,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
