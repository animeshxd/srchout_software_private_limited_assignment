import 'package:flutter/material.dart';

import '../constrains.dart';

class TabButton extends StatelessWidget {
  const TabButton({super.key, this.isActive = false, required this.labelText});

  final bool isActive;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);

    return Container(
      width: 100.p,
      height: 50.p,
      margin: EdgeInsets.only(right: 8.p),
      decoration: BoxDecoration(
        color: isActive ? AppTheme.secondaryCOlor : AppTheme.mainColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppTheme.borderColor, width: 2.p),
      ),
      child: Center(
        child: Text(
          labelText,
          style: AppTheme.textStyle.copyWith(
            color: isActive ? AppTheme.mainColor : AppTheme.secondaryCOlor,
            fontWeight: FontWeight.w500,
            fontSize: 18.pf
          ),
        ),
      ),
    );
  }
}
