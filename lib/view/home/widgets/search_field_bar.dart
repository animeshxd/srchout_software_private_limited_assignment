import 'package:flutter/material.dart';

import '../../../constrains.dart';

class SearchFieldBar extends StatelessWidget {
  const SearchFieldBar({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);
    return Container(
      width: 324.p,
      height: 60.p,
      margin: EdgeInsets.only(top: 33.p, bottom: 32.p),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          hoverColor: Colors.transparent,
          prefixIcon: Container(
            margin: EdgeInsets.only(left: 13.p),
            width: 25.p,
            height: 25.p,
            child: AppIcons.magnfying,
          ),
          hintText: 'Search Bike',
          hintStyle: AppTheme.textStyle.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20.pf,
            color: const Color(0xFFD2CFCF),
          ),
          filled: true,
          fillColor: const Color(0xFFEFEEEE),
        ),
      ),
    );
  }
}
