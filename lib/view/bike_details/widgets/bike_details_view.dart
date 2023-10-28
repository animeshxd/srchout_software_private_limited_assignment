import 'package:flutter/material.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';
import 'package:srchout_software_private_limited_assignment/data.dart';

class BikeImage extends StatelessWidget {
  const BikeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: LayoutSize.width * .6,
          height: 282.p,
          constraints: BoxConstraints(maxHeight: 282.p, maxWidth: 203.p),
          margin: EdgeInsets.only(right: 23.pf),
          decoration: BoxDecoration(
            color: AppTheme.borderColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: LayoutSize.width * .6,
          height: 240.p,
          constraints: BoxConstraints(maxHeight: 240.p, maxWidth: 250.p),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bikeDetails.image),
            ),
          ),
        ),
      ],
    );
  }
}
