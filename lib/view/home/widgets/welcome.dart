import 'package:flutter/material.dart';

import '../../../constrains.dart';
import '../../../data.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);

    return Row(
      children: [
        Container(
          width: 50.p,
          height: 50.p,
          margin: EdgeInsets.only(left: 25.p, right: 14.p, top: 10.p),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.p),
            image: DecorationImage(image: AssetImage(user.image)),
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Welcome\n',
                style: AppTheme.labelTextStyle
                    .copyWith(fontSize: 12.pf, height: 14.pf / 12.pf),
              ),
              TextSpan(
                text: user.name,
                style: AppTheme.textStyle.copyWith(
                  fontSize: 15.pf,
                  fontWeight: FontWeight.w600,
                  height: 18.pf / 15.pf,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
