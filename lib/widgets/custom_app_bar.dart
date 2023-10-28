import 'package:flutter/material.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({
    super.key,
    required String title,
  }) : super(
          preferredSize: Size(LayoutSize.width, 70.p),
          child: Container(
            margin: EdgeInsets.only(top: 31.ph, left: 22.p, right: 22.p),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: AppIcons.backArrow,
                ),
                SizedBox(width: 31.p),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: AppTheme.borderStyle,
                    ),
                    child: Center(
                      child: Text(
                        title,
                        style: AppTheme.textStyle.copyWith(
                          fontSize: 25.pf,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
}
