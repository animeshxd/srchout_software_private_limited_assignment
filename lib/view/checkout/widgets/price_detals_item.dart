import 'package:flutter/material.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class PriceDetalsItem extends StatelessWidget {
  const PriceDetalsItem({
    super.key,
    required this.why,
    required this.price,
  });
  final String why;
  final Object price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          why,
          style: TextStyle(
            fontSize: 18.pf,
            fontWeight: FontWeight.w300,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              '₹ ',
              style: TextStyle(
                fontSize: 18.pf,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              price.toString(),
              style: TextStyle(
                fontSize: 18.pf,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        )
      ],
    );
  }
}
