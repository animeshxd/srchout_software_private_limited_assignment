import 'package:flutter/material.dart';
import 'package:srchout_software_private_limited_assignment/constrains.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Days',
              style: AppTheme.textStyle.copyWith(
                fontSize: 18.pf,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              '4',
              style: AppTheme.textStyle.copyWith(
                fontSize: 18.pf,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        SizedBox(height: 7.p),
        Table(
          columnWidths: const <int, TableColumnWidth>{
            1: IntrinsicColumnWidth(),
            2: IntrinsicColumnWidth(),
          },
          children: [
            priceDetailsTableRow(why: 'Rent', price: '5996'),
            tableSpacer(),
            priceDetailsTableRow(why: 'Additional items', price: '6400'),
            tableSpacer(),
            priceDetailsTableRow(why: 'Coupon Discount', price: '396'),
          ],
        ),
      ],
    );
  }

  TableRow tableSpacer() {
    return TableRow(
      children: [
        SizedBox(
          height: 7.p,
        ),
        const SizedBox.shrink(),
        const SizedBox.shrink()
      ],
    );
  }

  TableRow priceDetailsTableRow({required String why, required String price}) {
    return TableRow(
      children: [
        Text(
          why,
          style: AppTheme.textStyle.copyWith(
            fontSize: 18.pf,
            fontWeight: FontWeight.w300,
            height: 21 / 18,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            '₹ ',
            style: AppTheme.textStyle.copyWith(
              fontSize: 18.pf,
              fontWeight: FontWeight.w300,
              height: 21 / 18,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            price,
            style: AppTheme.textStyle.copyWith(
              fontSize: 18.pf,
              fontWeight: FontWeight.w300,
              height: 21 / 18,
            ),
          ),
        ),
      ],
    );
  }
}
