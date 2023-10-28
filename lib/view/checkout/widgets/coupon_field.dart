import 'package:flutter/material.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class CouponField extends StatelessWidget {
  const CouponField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 329,
      height: 38,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.only(left: 11),
          hintText: 'Apply coupon',
          hintStyle: AppTheme.textStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 20.pf,
            color: const Color(0xFF8C7E7E),
          ),
        ),
      ),
    );
  }
}
