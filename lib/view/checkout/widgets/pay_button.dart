import 'package:flutter/material.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class PayButton extends StatelessWidget {
  const PayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.secondaryCOlor,
      ),
      child: const Center(
        child: Text(
          "PAY",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
