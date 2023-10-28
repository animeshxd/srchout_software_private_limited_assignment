import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constrains.dart';
import 'widgets/app_bottom_navigation_bar.dart';
import 'widgets/custom_app_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppTheme.secondaryCOlor,
          background: AppTheme.mainColor,
          primary: AppTheme.secondaryCOlor,
        ),
        textTheme: GoogleFonts.robotoTextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppTheme.mainColor,
        ),
      ),
      home: const CheckOutView(),
    );
  }
}

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

class CouponField extends StatelessWidget {
  const CouponField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 329,
      height: 38,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.only(left: 11),
          hintText: 'Apply coupon',
          hintStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.pf,
            color: const Color(0xFF8C7E7E),
          ),
        ),
      ),
    );
  }
}

class PayButton extends StatelessWidget {
  const PayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.secondaryCOlor,
      ),
      child: const Center(
        child: Text(
          "PAY",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class TotalPriceDetails extends StatelessWidget {
  const TotalPriceDetails({
    super.key,
    required this.total,
  });
  final String total;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total Amount',
          style: TextStyle(
            fontSize: 18.pf,
            height: 21 / 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '₹ $total',
          style: TextStyle(
            fontSize: 18.pf,
            height: 21 / 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

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
              style: TextStyle(
                fontSize: 18.pf,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              '4',
              style: TextStyle(
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
          style: TextStyle(
              fontSize: 18.pf, fontWeight: FontWeight.w300, height: 21 / 18),
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: Text('₹ '),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(price),
        ),
      ],
    );
  }
}

class PriceDetalsItem extends StatelessWidget {
  const PriceDetalsItem({
    super.key,
    required this.why,
    required this.price,
  });
  final String why;
  final Object price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          why,
          style: TextStyle(
            fontSize: 18.pf,
            fontWeight: FontWeight.w300,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              '₹ ',
              style: TextStyle(
                fontSize: 18.pf,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              price.toString(),
              style: TextStyle(
                fontSize: 18.pf,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        )
      ],
    );
  }
}

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
