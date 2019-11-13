import 'package:ecommerce/src/car_rent_ui/car_home_page/layout_starts.dart';
import 'package:flutter/material.dart';

class CarHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: EdgeInsets.only(left: 25),
          child: Icon(
            Icons.arrow_back, color: Colors.white
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
      backgroundColor: Colors.yellow,
      body: LayoutStarts(),

      
    );
  }
}