import 'package:flutter/material.dart';

import '../../../constrains.dart';
import 'date_selector_tile.dart';

class DateSelector extends StatelessWidget {
  const DateSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.p,
      height: 183.p,
      padding: EdgeInsets.all(17.pf),
      decoration: BoxDecoration(
        color: AppTheme.borderColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: DateSelectorTile(
              isStarting: true,
              date: '09-06-2021',
            ),
          ),
          SizedBox(height: 9.p),
          const Expanded(
            child: DateSelectorTile(
              isStarting: false,
              date: '12-06-2021',
            ),
          ),
        ],
      ),
    );
  }
}
