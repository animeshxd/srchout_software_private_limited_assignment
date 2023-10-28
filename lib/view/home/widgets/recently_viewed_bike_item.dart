import 'package:flutter/material.dart';

import '../../../constrains.dart';
import '../../../models.dart';
import 'bike_item.dart';

class RecentlyViewedBikeItem extends StatelessWidget {
  const RecentlyViewedBikeItem({super.key, required this.bike});

  final Bike bike;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.p,
      height: 50.p,
      margin: EdgeInsets.only(right: 10.pw, bottom: 15.pw),
      padding: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: AppTheme.borderStyle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 45.p,
            height: 35.p,
            margin: EdgeInsets.only(left: 12.p),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bike.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppTheme.borderColor),
            ),
          ),
          SizedBox(width: 10.p),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BikeName(name: bike.name),
              BikePrice(price: bike.pricePerDay),
            ],
          ),
          const Expanded(child: SizedBox.shrink()),
          AvailableStatus(isAvailable: bike.isAvailable)
        ],
      ),
    );
  }
}

class AvailableStatus extends StatelessWidget {
  const AvailableStatus({super.key, this.isAvailable = false});
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: 70.p,
      height: 22.p,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isAvailable ? AppTheme.secondaryCOlor : const Color(0xFFBFC5BF),
      ),
      child: Center(
        child: Text(
          isAvailable ? 'Available' : 'Booked',
          style: AppTheme.textStyle.copyWith(
            fontSize: 15.pf,
            fontWeight: FontWeight.w500,
            color: isAvailable ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
