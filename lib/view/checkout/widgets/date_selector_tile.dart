import 'package:flutter/material.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class DateSelectorTile extends StatelessWidget {
  const DateSelectorTile({
    super.key,
    required this.date,
    this.isStarting = true,
  });

  final String date;
  final bool isStarting;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.p,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffe5e5e5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: isStarting ? 'Start date\n' : 'End Date\n',
                  style: TextStyle(
                    color: AppTheme.labelTextStyle.color,
                  ),
                ),
                TextSpan(text: date),
              ],
              style: AppTheme.textStyle.copyWith(
                fontSize: 20.pf,
              ),
            ),
          ),
          SizedBox(
            width: 25.p,
            height: 25.p,
            child: AppIcons.calender,
          )
        ],
      ),
    );
  }
}
