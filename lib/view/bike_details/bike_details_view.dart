import 'package:flutter/material.dart';

import '../../constrains.dart';
import '../../data.dart';
import '../../widgets/app_bottom_navigation_bar.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/items_label.dart';

import 'widgets/widgets.dart';

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
          padding: EdgeInsets.only(
            left: 10.p,
          ),
          //TODO: use all with slivers
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
    );
  }
}
