import 'package:flutter/material.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class TotalPriceDetails extends StatelessWidget {
  const TotalPriceDetails({
    super.key,
    required this.total,
  });
  final String total;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total Amount',
          style: TextStyle(
            fontSize: 18.pf,
            height: 21 / 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '₹ $total',
          style: TextStyle(
            fontSize: 18.pf,
            height: 21 / 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
