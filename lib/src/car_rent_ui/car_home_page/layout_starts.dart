import 'package:ecommerce/src/car_rent_ui/car_home_page/CarDetailsAnimationSheet.dart';
import 'package:ecommerce/src/car_rent_ui/car_home_page/CustomBottomSheet.dart';
import 'package:ecommerce/src/car_rent_ui/car_home_page/RentButton.dart';
import 'package:flutter/material.dart';

class LayoutStarts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarDetailsAnimation(),
        CustomBottomSheet(),
        RentButton(),
      ],
    );
  }
}