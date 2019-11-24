import 'package:ecommerce/src/fitnessappui/banner_section.dart';
import 'package:ecommerce/src/fitnessappui/complete_goal.dart';
import 'package:ecommerce/src/fitnessappui/custom_buttonbar.dart';
import 'package:ecommerce/src/fitnessappui/recentChallenge.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  primaryColor: Color(0xFF3467E3), primaryColorDark: Color(0xFF295DD9)
);


class FitnessHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Dashboard",
          style:TextStyle(fontSize: 20.0),
        ),
        centerTitle: true,
        backgroundColor:appTheme.primaryColor ,
        // backgroundColor: Colors.purple,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu,
            color:Colors.white),
            onPressed: (){},
          )
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(bottom: 50.0),
          child: Column(
            children: <Widget>[
              Bannersection(),
              RecentChallnge(),
              CompletedGoal()
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomButtonBar(),
    );
  }
}