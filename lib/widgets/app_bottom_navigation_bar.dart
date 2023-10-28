import 'package:flutter/material.dart';

import '../constrains.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Container(
        height: 47,
        padding: EdgeInsets.only(left: 10.p, right: 10.p),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xdbe5e5e5)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 30.p,
              height: 30.p,
              child: AppIcons.home,
            ),
            SizedBox(
              width: 30.p,
              height: 30.p,
              child: AppIcons.map,
            ),
            SizedBox(
              width: 30.p,
              height: 30.p,
              child: AppIcons.cardWallet,
            ),
            SizedBox(
              width: 30.p,
              height: 30.p,
              child: AppIcons.settings,
            ),
          ],
        ),
      ),
    );
  }
}
