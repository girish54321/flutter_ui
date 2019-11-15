import 'package:ecommerce/src/customappbar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class FancyBottonNavigationBar extends StatefulWidget {
  @override
  _FancyBottonNavigationBarState createState() => _FancyBottonNavigationBarState();
}

class _FancyBottonNavigationBarState extends State<FancyBottonNavigationBar> {
  var currentPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.shopping_cart, title: "Basket"),
        ],
        onTabChangedListener: (position){
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}