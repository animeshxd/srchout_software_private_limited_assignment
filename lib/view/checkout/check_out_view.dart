import 'package:flutter/material.dart';

import '../../constrains.dart';
import '../../widgets/app_bottom_navigation_bar.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/widgets.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Check Out'),
        bottomNavigationBar: const AppBottomNavigationBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                width: LayoutSize.width,
                height: 20.ph,
              ),
              const DateSelector(),
              SizedBox(height: 38.ph),
              const CouponField(),
              SizedBox(height: 31.ph),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 18.pf,
                    height: 21.pf / 18.pf,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              const Divider(height: 1),
              const SizedBox(height: 3),
              const PriceDetails(),
              SizedBox(height: 13.ph),
              const Divider(),
              const TotalPriceDetails(total: '12000'),
              SizedBox(height: 71.ph),
              const PayButton()
            ],
          ),
        ),
      ),
    );
  }
}
