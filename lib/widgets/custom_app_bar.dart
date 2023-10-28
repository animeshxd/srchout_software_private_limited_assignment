import 'package:flutter/material.dart';
import '../constrains.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({
    super.key,
    required String title,
  }) : super(
          preferredSize: Size(LayoutSize.width, 99.p),
          child: Container(
            margin: EdgeInsets.only(
              top: 20.ph,
              left: 22.p,
              right: 22.p,
              bottom: 20.ph,
            ),
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
                    height: 61.p,
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
