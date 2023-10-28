import 'package:flutter/material.dart';

import '../constrains.dart';

class ItemsLabel extends StatelessWidget {
  const ItemsLabel(this.label, this.label2, {super.key});

  final String label;
  final String label2;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: label,
              style: const TextStyle(fontWeight: FontWeight.w800),
            ),
            TextSpan(
              text: ' $label2',
              style: const TextStyle(fontWeight: FontWeight.w400),
            ),
          ],
        ),
        style: AppTheme.textStyle.copyWith(fontSize: 21.pf),
      ),
    );
  }
}
