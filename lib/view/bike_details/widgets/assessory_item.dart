import 'package:flutter/material.dart';

import '../../../constrains.dart';
import '../../../data.dart';
import '../../home/widgets/bike_item.dart';

class AccessoryItem extends StatelessWidget {
  const AccessoryItem({super.key, required this.accessory});

  final Accessory accessory;

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
                image: AssetImage(accessory.image),
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
              BikeName(name: accessory.name),
              BikePrice(price: accessory.pricePerDay),
            ],
          ),
          const Expanded(child: SizedBox.shrink()),
          CartStatus(total: accessory.inCart)
        ],
      ),
    );
  }
}

class CartStatus extends StatelessWidget {
  const CartStatus({super.key, this.total = 0});
  final int total;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: 70.p,
      height: 22.p,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: total > 0 ? AppTheme.secondaryCOlor : const Color(0xFFBFC5BF),
      ),
      child: Center(
        child: Text(
          total > 0 ? '$total' : 'Add',
          style: AppTheme.textStyle.copyWith(
            fontSize: 15.pf,
            fontWeight: FontWeight.w500,
            color: total > 0 ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
