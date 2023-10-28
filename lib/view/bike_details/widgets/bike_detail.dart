import 'package:flutter/material.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class BikeDetail extends StatelessWidget {
  const BikeDetail({super.key, required this.label, required this.text});
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136.p,
      height: 63.p,
      padding: EdgeInsets.all(11.p),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppTheme.borderColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '$label\n',
            ),
            TextSpan(
              text: text,
              style: const TextStyle(
                color: AppTheme.secondaryCOlor,
              ),
            ),
          ],
          style: AppTheme.labelTextStyle.copyWith(
            fontSize: 18.pf,
            height: 21.pf / 18.pf,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
