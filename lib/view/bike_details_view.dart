import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constrains.dart';
import '../data.dart';
import '../widgets/app_bottom_navigation_bar.dart';
import '../widgets/assessory_item.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/items_label.dart';

class BikeDetailsView extends StatelessWidget {
  const BikeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    LayoutSize.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Bike Details'),
        bottomNavigationBar: const AppBottomNavigationBar(),
        body: SingleChildScrollView(
          //TODO: use all with slivers
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.p,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 33),
                IntrinsicHeight(
                  // height: 282.p,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BikeNameWithCompanyDetail(
                            name: bikeDetails.name,
                            company: bikeDetails.category,
                          ),
                          BikeDetail(
                            label: 'Category',
                            text: bikeDetails.category,
                          ),
                          BikeDetail(
                            label: 'Displacement',
                            text: bikeDetails.displacement,
                          ),
                          BikeDetail(
                            label: 'Max. Speed',
                            text: bikeDetails.maxSpeed,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const BikeImage(),
                          SizedBox(height: 18.ph),
                          RentButton(price: bikeDetails.pricePerDay)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 36.p, bottom: 15.p, left: 20.p),
                  child: const ItemsLabel('Add', 'item'),
                ),
                ListView.builder(
                  //TODO: use with slivers
                  shrinkWrap: true,
                  itemCount: accessories.length,
                  itemBuilder: (context, index) => AccessoryItem(
                    accessory: accessories[index],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BikeNameWithCompanyDetail extends StatelessWidget {
  const BikeNameWithCompanyDetail({
    super.key,
    required this.name,
    required this.company,
  });
  final String name;
  final String company;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: company,
        style: GoogleFonts.robotoSlab(
          fontSize: 22.pf,
          height: 29.pf / 22.pf,
          fontWeight: FontWeight.w400,
        ),
        children: [
          TextSpan(
            text: "\n$name",
            style: AppTheme.textStyle.copyWith(
              fontSize: 21.pf,
              height: 25.pf / 21.pf,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}

class BikeDetail extends StatelessWidget {
  const BikeDetail({super.key, required this.label, required this.text});
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136.p,
      height: 63.p,
      padding: EdgeInsets.all(11.p),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppTheme.borderColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '$label\n',
            ),
            TextSpan(
              text: text,
              style: const TextStyle(
                color: AppTheme.secondaryCOlor,
              ),
            ),
          ],
          style: AppTheme.labelTextStyle.copyWith(
            fontSize: 18.pf,
            height: 21.pf / 18.pf,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class RentButton extends StatelessWidget {
  const RentButton({
    super.key,
    required this.price,
  });
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.p,
      width: LayoutSize.width * .6,
      constraints: BoxConstraints(maxHeight: 63.p, maxWidth: 203.p),
      margin: EdgeInsets.only(right: 23.pf),
      decoration: BoxDecoration(
        color: AppTheme.secondaryCOlor,
        border: Border.all(
          color: AppTheme.borderColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Rent',
            style: AppTheme.textStyle.copyWith(
              color: AppTheme.mainColor,
              fontSize: 25.pf,
              height: 29.pf / 25.pf,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$price/",
                  style: GoogleFonts.risque(
                    fontSize: 18.pf,
                    height: 21.pf / 18.pf,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.mainColor,
                  ),
                ),
                TextSpan(
                  text: "per day",
                  style: AppTheme.textStyle.copyWith(
                    fontSize: 16.pf,
                    height: 20.pf / 16.pf,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.mainColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BikeImage extends StatelessWidget {
  const BikeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: LayoutSize.width * .6,
          height: 282.p,
          constraints: BoxConstraints(maxHeight: 282.p, maxWidth: 203.p),
          margin: EdgeInsets.only(right: 23.pf),
          decoration: BoxDecoration(
            color: AppTheme.borderColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: LayoutSize.width * .6,
          height: 240.p,
          constraints: BoxConstraints(maxHeight: 240.p, maxWidth: 250.p),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bikeDetails.image),
            ),
          ),
        ),
      ],
    );
  }
}