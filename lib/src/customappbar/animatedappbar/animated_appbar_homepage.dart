import 'package:ecommerce/src/customappbar/animatedappbar/animated_app_bar_page.dart';
import 'package:flutter/material.dart';

class AnimatedAppBar extends StatefulWidget {
  @override
  _AnimatedAppBarState createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AnimatedAppBarPage('Mars News'),
      body: Center(
        child: Card(
          color: Colors.grey[300],
          elevation: 10.0,
          child: Container(
            height: 100.0,
            width: 100.0,
            alignment: Alignment.center,
            child: Text("Hello World!"),
          ),
        ),
      ),
      
    );
  }
}